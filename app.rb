require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do 
  erb :newteam
  end 
  
  get '/todos/:id' do
        id = params[:id]
        @todo = Todo.find_by_id(id)
        erb :"todos/show"
   end

   post '/newteam' do 
    erb:team
   end 
   
end


    post '/todos' do
        # todo = Todo.new(name: params[:name], description: params[:description])
        todo = Todo.new(params)
        if todo.save
            redirect "todos/#{todo.id}"
        else
            redirect "todos/new"
        end
    end



end
