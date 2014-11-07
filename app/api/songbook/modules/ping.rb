module Songbook
  module Modules
    class Ping < Grape::API
      format :json

      helpers do
        def authenticated_user?
          error!('401 Unauthorized', 401) unless params[:songbook_token] == 'the_most_secure_token'
        end
      end

      version :v1 do

        desc 'Returns pong.'
        get :ping do
          { ping: params[:pong] || 'pong' }
        end

        desc 'returns pong if authentication process is valid.'
        get :protected_ping do
          authenticated_user?
          { ping: params[:pong] || 'pong' }
        end

      end
    end
  end
end
