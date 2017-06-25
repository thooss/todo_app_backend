class TodoController < ApplicationController
    def index
    end
    def show 
        todo_id=params[:id]
        @todo=Todo.find_by_id(todo_id)
    end
    def new 
    end 
    def create
        t=Todo.new
        t.description=params["description"]
        t.pomodoro_estimate=params["pomodoro-estimate"]
        t.save
        redirect_to "/todo/show/#{t.id}"
    end 
    def edit 
        todo_id=params[:id]
        @todo=Todo.find_by_id(todo_id)
    end
    def update 
        todo_id=params[:id]
        t=Todo.find_by_id(todo_id)
        t.description=params["description"]
        t.pomodoro_estimate=params["pomodoro-estimate"]
        t.save
        redirect_to "/todo/show/#{t.id}" 
    end
    def delete 
        todo_id=params[:id]
        t=Todo.find_by_id(todo_id)
        t.destroy 
        redirect_to "/todo/index"
    end
end