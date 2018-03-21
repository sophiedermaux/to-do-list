require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  RSpec.describe TasksController do
    describe "gets index" do
      it "renders the index page of all tasks" do
        task = Factory(:task)
        get :index
        expect(assigns(:tasks).to eq([task]))
      end
    end

    describe "new task" do
      it "creates a new task" do
        get :new

      end
    end


  end

end
