class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:name])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def complete
    @task = tasks.find(params[:id])
    @task.completed = true
    @task.save
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:name, :description, :status)
  end

end
