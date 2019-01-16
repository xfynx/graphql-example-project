module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: false
    end
    field :posts, [Types::PostType], null: true
    field :comments, [Types::CommentType], null: true

    def users
      User.all
    end
    def user(id:)
      User.find(id)
    end
    def posts
      Post.all
    end
    def comments
      Comment.all
    end
  end
end
