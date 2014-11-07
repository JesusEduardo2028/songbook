class API < Grape::API
  prefix 'api'

  format :json

  desc 'Returns pong.'
  get :ping do
    { ping: params[:pong] || 'pong' }
  end
end
