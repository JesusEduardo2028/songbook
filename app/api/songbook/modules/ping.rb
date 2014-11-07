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
        params do
          requires :songbook_token, type: String
        end
        get :protected_ping do
          authenticated_user?
          { ping: params[:pong] || 'pong' }
        end

      end
    end
  end
end
