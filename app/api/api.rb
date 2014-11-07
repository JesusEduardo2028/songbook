class API < Grape::API
  prefix 'api'

  format :json
  version :v1 do
    desc 'Returns pong.'
    get :ping do
      { ping: params[:pong] || 'pong' }
    end
  end
end
