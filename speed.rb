require 'sinatra'
before do
  response['Access-Control-Allow-Origin'] = '*'
end
%w(unified sample128k_2 sample128k sample256k sample512k sample1024k sample2048k sample4096k sample8192k).each do |url|
  get "/#{url}" do
    erb url.to_sym
  end
end

get '/test.png' do
  ''
end

get '/speed' do
  erb :speed
end

get '/' do
  erb :index
end

# get '/favicon.ico' do
#   sendfile File.expand_path('public/favicon.ico')
# end
