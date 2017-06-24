class TodoController < ApplicationController
    def index
    end
    def show 
        @pomodoro_estimate=7
        @todo_description="Do something"
    end
end