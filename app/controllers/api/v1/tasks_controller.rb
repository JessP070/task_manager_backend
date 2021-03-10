class Api::V1::TasksController < ApplicationController

    def index 
        tasks = Task.all
        render json: TaskSerializer.new(tasks)
    end

    def create
        task = Task.new(task_params)
        if task.save
            render json: task, status: :accepted
        else
            render json: {errors: task.errros.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def task_params
        params.require(:task).permit(:title, :deadline, :creator, :status, :test)
    end

end
