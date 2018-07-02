class DemandeEnrolementRGPD < ApplicationRecord
  has_one :demarche_administrative
  has_one :contact_organisme_demandeur, class_name: 'Contact'
  has_many :contacts
end
