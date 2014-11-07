describe 'Ping', :type => :request do
  it 'ping' do
    get '/api/v1/ping'
    expect(response.body).to eq({ ping: 'pong' }.to_json)
  end

  it 'ping with a parameter' do
    get '/api/v1/ping?pong=test'
    expect(response.body).to eq({ ping: 'test' }.to_json)
  end
end
