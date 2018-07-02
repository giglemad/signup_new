class CreateDemandesEnrolementsRGPD < ActiveRecord::Migration[5.2]
  def change
    create_table :demandes_enrolements_rgpd, id: :uuid do |t|
      t.string  :siret_organisme_demandeur
      t.text    :description_organisme_demandeur

      t.json    :perimetre_donnees
      t.text    :destinataires_donnees
      t.text    :informations_complementaires

      t.string  :lu_et_approuve_dpd
      t.boolean :acceptation_cgu

      t.timestamps
    end
  end
end
