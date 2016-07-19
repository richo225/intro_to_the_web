require "sinatra"
set :session_secret, 'super secret'

#browser requests the path "/"
#sinatra activates the block with "hello" inside

get "/" do
  "hello!"
end

#browser requests the path "/secret"
#sinatra activates the block with "I have a secret! inside

get "/secret" do
  "I have a secret!"
end

get "/secret/answer" do
  "I smell!"
end

get "/random-cat" do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end
