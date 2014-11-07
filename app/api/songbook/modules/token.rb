module Songbook
  module Modules
    class Token < Grape::API
      format :json

      version :v1 do
        desc 'Returns a token by authenticating user email and password credentials'
        params do
          requires :email, type: String
          requires :password, type: String
        end
        get 'token' do
          {
            access_token: 'the_most_secure_token',
            expires_in: Time.now.tomorrow
          }
        end
      end
    end
  end
end
