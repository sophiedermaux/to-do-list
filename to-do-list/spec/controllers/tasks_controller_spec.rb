require 'rails_helper'

describe TasksController, :type => :controller do
  context "GET #index" do
    it "renders the index " do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context "POST create" do
    it "creates a new task" do
      post :create, task: { description: 'Drink' }
      expect(:task).to redirect_to(root_path)
    end
  end

  context "PUT update" do
    let(:task) { Task.create(:description => "123") }

    it "updates the task to completed" do
      put :update, id: task, task: {}
      task.reload
      expect(task.completed).to eq(true)
    end
  end
end
