class TasksController < ApplicationController
  TASKS = {
    1 => { name: "eat", description: "consumption of food", complete: "yes"},
    2 => { name: "drink", description: "consumption of drink", complete: "yes"},
    3 => { name: "sleep", description: "sleeping in your bed", complete: "yes"},
    4 => { name: "walk", description: "a form of exercise", complete: "yes"}
  }

  def index
    @tasks = TASKS
  end

  # def create
  #   @task = Task.new
  # end
  #
  # def update
  #   @task = Task.find(params[:name])
  #   @task.update(:complete)
  # end
  #
  # def destroy
  #   @task = Task.find(params[:name])
  #   @task.destroy
  # end

end
