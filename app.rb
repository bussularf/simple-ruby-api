require 'sinatra'
require 'json'

tasks = []

get '/tasks' do
  content_type :json
  tasks.to_json
end

post '/tasks' do
  content_type :json
  task = JSON.parse(request.body.read)
  tasks << task
  task.to_json
end

delete '/tasks/:index' do
  content_type :json
  index = params['index'].to_i
  tasks.delete_at(index)
  { status: 'Task deleted' }.to_json
end

get '/' do
  send_file 'index.html'
end

get '/swagger.yaml' do
  send_file 'swagger.yaml'
end
