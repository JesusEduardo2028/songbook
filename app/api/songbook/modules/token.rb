module Songbook
  module Modules
    class Token < Grape::API
      format :json

      version :v1 do
        desc 'Returns a token by authenticating user email and password credentials', {
            notes: <<-NOTE
              ### Description
              It creates a new entry record and returns its current representation.

              ### Example successful response

                  {
                    "access_token": "the_most_secure_token",
                    "expires_in": "2014-06-09T13:50:52-05:00"
                  }
            NOTE
          }
        params do
          requires :email, type: String, desc: 'User Email'
          requires :password, type: String, desc: 'User Password'
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
