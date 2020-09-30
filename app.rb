require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do 
  erb :newteam
  end 
  
  get '/teams/:id' do
    id = params[:id]
    t = @teams.find_by_id(id)
    erb :"teams/show"
  end

  post '/team' do 
    @
    erb :team
  end 
   
end
