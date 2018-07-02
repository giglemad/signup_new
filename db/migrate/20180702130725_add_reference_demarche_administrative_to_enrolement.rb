class AddReferenceDemarcheAdministrativeToEnrolement < ActiveRecord::Migration[5.2]
  def change
    change_table :demarches_administratives do |t|
      t.belongs_to :demande_enrolement_rgpd, type: :uuid, index: true
    end
  end
end
