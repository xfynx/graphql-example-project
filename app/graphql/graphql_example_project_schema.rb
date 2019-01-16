class GraphqlExampleProjectSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
