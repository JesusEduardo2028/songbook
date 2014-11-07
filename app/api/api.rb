class API < Grape::API
  prefix 'api'

  # Separate the api into smaller
  # modules like this
  mount Songbook::Modules::Ping
  mount Songbook::Modules::Token
end
