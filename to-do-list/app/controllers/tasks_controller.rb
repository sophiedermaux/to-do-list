class TasksController < ApplicationController

  def index
    @task = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:name])
    @task.update(task_params)
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:name, :description, :status)
  end

end
