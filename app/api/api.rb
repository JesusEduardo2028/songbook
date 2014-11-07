class API < Grape::API
  prefix 'api'

  helpers do
    def authenticated_user?
      error!('401 Unauthorized', 401) unless params[:songbook_token] == 'the_most_secure_token'
    end
  end

  # Separate the api into smaller
  # modules like this
  mount Songbook::Modules::Ping
  mount Songbook::Modules::Token
end
