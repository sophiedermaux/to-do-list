require 'rails_helper'

RSpec.describe Task, :type => :model do
  it { should validate_presence_of(:description) }

  context "scopes" do
    describe "#completed" do
      it "will return tasks that are completed" do
        task = Task.create(
          description: "Watering",
          completed: true
        )

        expect(Task.completed).to include(task)
      end

      it "does not return tasks that are incomplete" do
        task = Task.create(
          description: "Watering"
        )

        expect(Task.completed).not_to include(task)
      end
    end

    describe "#incompleted" do
      it "will return tasks that are incomplete" do
        task = Task.create(
          description: "Watering"
        )

        expect(Task.incomplete).to include(task)
      end

      it "does not return tasks that are complete" do
        task = Task.create(
          description: "Watering",
          completed: true
        )

        expect(Task.incomplete).not_to include(task)
      end
    end
  end
end
