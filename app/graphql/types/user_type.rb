module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false

    field :posts, [Types::PostType], null: true
    field :comments, [Types::CommentType], null: true
  end
end