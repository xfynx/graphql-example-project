module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: false

    field :user, Types::UserType, null: false
    field :comments, [Types::CommentType], null: true

    def comments
      Comment.where(post_id: id)
    end
  end
end