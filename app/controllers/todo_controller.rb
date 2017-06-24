class TodoController < ApplicationController
    def index
    end
    def show 
        todo_id=params[:id]
        if todo_id=='1' 
            @pomodoro_estimate=7
            @todo_description="Take a Nap"
        elsif todo_id=='2'
            @pomodoro_estimate=6
            @todo_description="sleep"
        elsif todo_id=='3'
            @pomodoro_estimate=5
            @todo_description="Dream"
        elsif todo_id=='4'
            @pomodoro_estimate=4
            @todo_description="Slumber"
        elsif todo_id=='5'
            @pomodoro_estimate=3
            @todo_description="Hibernate"
        elsif todo_id=='6'
            @pomodoro_estimate=2
            @todo_description="A suspension of consciousness"
        elsif todo_id=='7'
            @pomodoro_estimate=1
            @todo_description="Rest"
        end
    end
end