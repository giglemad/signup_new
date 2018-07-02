require 'rails_helper'

describe Contact::Create do
  let(:operation_params) do
    {
      prenom: 'Prenom test',
      nom: 'Nom test',
      telephone: '0836656565',
      email: 'test@signup.fr',
      type_contact: 'test',
      demande_enrolement_rgpd_id: 'test id'
    }
  end
  subject { described_class.call(params: operation_params) }

  context 'when params are valid' do
    it 'saves the new contact' do
      expect { subject }.to change(Contact, :count).by(1)
      expect(subject).to be_success
    end
  end

  context 'when params are invalid' do
    let(:errors) { subject['result.contract.default'].errors[field] }

    describe '#prenom' do
      let(:field) { :prenom }
      it 'must be filled' do
        operation_params.delete(:prenom)

        expect(subject).to be_failure
        expect(errors).to include('must be filled')
      end

      it 'is 64 chars max' do
        operation_params[:prenom] = 'a' * 65

        expect(subject).to be_failure
        expect(errors).to include('size cannot be greater than 64')
      end
    end

    describe '#nom' do
      let(:field) { :nom }
      it 'must be filled' do
        operation_params.delete(:nom)

        expect(subject).to be_failure
        expect(errors).to include('must be filled')
      end

      it 'is 64 chars max' do
        operation_params[:nom] = 'a' * 65

        expect(subject).to be_failure
        expect(errors).to include('size cannot be greater than 64')
      end
    end

    describe '#telephone' do
      it 'is optional' do
        operation_params.delete(:telephone)

        expect(subject).to be_success
      end

      it 'has a valid format'
    end
  end
end
