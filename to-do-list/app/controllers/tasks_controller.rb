class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(completed: true) ? flash[:notice] = "Completed" : flash[:notice] = "Error"
    redirect_to root_path
  end

private

  def task_params
    params.require(:task).permit(:description)
  end

end
