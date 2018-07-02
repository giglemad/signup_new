class ContactBelongsToDemandeEnrolementRGPD < ActiveRecord::Migration[5.2]
  def change
    change_table :contacts do |t|
      t.belongs_to :demande_enrolement_rgpd, index: true, type: :uuid
    end
  end
end
