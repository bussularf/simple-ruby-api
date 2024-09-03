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

delete '/tasks' do
  content_type :json
  title = params['title']
  task_to_delete = tasks.find { |task| task['title'] == title }
  
  if task_to_delete
    tasks.delete(task_to_delete)
    { status: 'Task deleted' }.to_json
  else
    status 404
    { error: 'Task not found' }.to_json
  end
end

get '/' do
  send_file 'index.html'
end

get '/swagger.yaml' do
  send_file 'swagger.yaml'
end
