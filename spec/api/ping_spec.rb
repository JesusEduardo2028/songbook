describe 'Ping', :type => :request do
  it 'ping' do
    get '/api/ping'
    expect(response.body).to eq({ ping: 'pong' }.to_json)
  end
end
