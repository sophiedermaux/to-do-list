Rails.application.routes.draw do
  resource :tasks, :only => [:index, :create, :update]
  put "tasks/:id", to: "tasks#update", as: :update_tasks
  root to: 'tasks#index'
end
