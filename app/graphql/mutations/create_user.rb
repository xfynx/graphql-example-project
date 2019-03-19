module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation
    # type Types::UserType
    field :user, Types::UserType, null: false
    field :result, Boolean, null: false

    argument :name, String, required: true
    # argument :id, ID, required: true


    def resolve(name: nil)
      user = User.create(name: name)
      {
          user: user,
          result: !user.errors.present?
      }
    end
  end
end
