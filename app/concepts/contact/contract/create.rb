class Contact
  module Contract
    class Create < Reform::Form
      property :prenom
      property :nom
      property :telephone

      validation do
        required(:prenom).filled(:str?, max_size?: 64)
        required(:nom).filled(:str?, max_size?: 64)

      end
    end
  end
end
