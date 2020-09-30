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
    erb :team
  end 
   
end


#     # post '/todos' do
#     #     # todo = Todo.new(name: params[:name], description: params[:description])
#     #     todo = Todo.new(params)
#     #     if todo.save
#     #         redirect "todos/#{todo.id}"
#     #     else
#     #         redirect "todos/new"
#     #     end
#     # end



# end
