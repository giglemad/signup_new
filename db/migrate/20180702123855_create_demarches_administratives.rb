class CreateDemarchesAdministratives < ActiveRecord::Migration[5.2]
  def change
    create_table :demarches_administratives, id: :uuid do |t|
      t.string :intitule
      t.text :description
      t.text :cadre_juridique
      t.integer :nombre_mois_conservation_donnees

      t.timestamps
    end
  end
end
