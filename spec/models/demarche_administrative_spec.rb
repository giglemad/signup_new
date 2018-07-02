require 'rails_helper'

describe DemarcheAdministrative do
  it { is_expected.to have_db_column(:intitule).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:text) }
  it { is_expected.to have_db_column(:cadre_juridique).of_type(:text) }

  it { is_expected.to have_db_column(:nombre_mois_conservation_donnees).of_type(:integer) }
end
