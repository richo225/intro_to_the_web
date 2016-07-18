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
