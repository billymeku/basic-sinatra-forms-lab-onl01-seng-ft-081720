require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do 
  erb :newteam
  end 

   post '/newteam' do 
    erb:team
   end 
end

  get '/team' do 
        @team = Team.all
        erb :team 
    end

    get '/t/new' do
        erb :"todos/new"
    end

    get '/todos/:id' do
        id = params[:id]
        @todo = Todo.find_by_id(id)
        erb :"todos/show"
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
