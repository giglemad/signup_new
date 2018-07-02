require 'rails_helper'

describe Contact do
  it { is_expected.to have_db_column(:prenom).of_type(:string) }
  it { is_expected.to have_db_column(:nom).of_type(:string) }
  it { is_expected.to have_db_column(:telephone).of_type(:string) }
  it { is_expected.to have_db_column(:email).of_type(:string) }
  it { is_expected.to have_db_column(:type_contact).of_type(:string) }

  it { is_expected.to have_db_column(:created_at).of_type(:timestamp) }
  it { is_expected.to have_db_column(:updated_at).of_type(:timestamp) }
end
