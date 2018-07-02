class Contact
  class Create < Trailblazer::Operation
    step Model(Contact, :new)
    step self::Contract::Build(constant: Contact::Contract::Create)
    step self::Contract::Validate()
    step self::Contract::Persist()
  end
end
