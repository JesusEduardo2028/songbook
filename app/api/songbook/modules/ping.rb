module Songbook
  module Modules
    class Ping < Grape::API
      format :json

      version :v1 do

        desc 'Returns pong.'
        get :ping do
          { ping: params[:pong] || 'pong' }
        end

        desc 'returns pong if authentication process is valid.'
        get :protected_ping do
          error!('401 Unauthorized', 401) unless params[:songbook_token] == 'the_most_secure_token'
          { ping: params[:pong] || 'pong' }
        end

      end
    end
  end
end
