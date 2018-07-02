class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts, id: :uuid do |t|
      t.string :prenom
      t.string :nom
      t.string :telephone
      t.string :email
      t.string :type_contact

      t.timestamps
    end
  end
end
