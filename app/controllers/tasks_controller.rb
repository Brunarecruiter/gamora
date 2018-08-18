class TasksController < ApplicationController
  def index
  end

  def new
  end

  def create
    @task = Task.new(task_params)
 
    @task.save
    redirect_to @task  
  end

  private

  def task_params
    params
      .require(:task).permit(:name, :description, :max_hours)
  end
end
