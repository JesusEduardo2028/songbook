module Songbook
  module Modules
    class Ping < Grape::API
      format :json
      version :v1 do
        desc 'Returns pong.'
        get :ping do
          { ping: params[:pong] || 'pong' }
        end
      end
    end
  end
end
