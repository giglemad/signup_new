require 'rails_helper'

describe DemandeEnrolementRGPD do
  it { is_expected.to have_db_index(:id) }
  it { is_expected.to validate_uniqueness_of(:id) }

  it { is_expected.to have_one(:contact_organisme_demandeur).class_name('Contact') }
  it { is_expected.to have_db_column(:siret_organisme_demandeur).of_type(:string) }
  it { is_expected.to have_db_column(:description_organisme_demandeur).of_type(:string) } # Nom du département, bureau ou service

  it { is_expected.to have_many(:contacts) }

  it { is_expected.to have_one(:demarche_administrative) }

  it { is_expected.to have_db_column(:perimetre_donnees).of_type(:json) }

  it { is_expected.to have_db_column(:destinataires_donnees).of_type(:text) }

  it { is_expected.to have_db_column(:informations_complementaires).of_type(:text) }

  # Boolean often evolves in status strings, we go for a string coupled with enum since
  # we don't care about performances
  it { is_expected.to have_db_column(:lu_et_approuve_dpd).of_type(:string) }

  it { is_expected.to have_db_column(:acceptation_cgu).of_type(:boolean) }

  it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
end
