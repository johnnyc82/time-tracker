require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  describe "Timer result is submitted and saved to the task" do
    before(:all) do
      @task = Fabricate(:task, time_elapsed: 60)
    end

    it "saves the elapsed time" do
      patch :submit_time, current_time: "30", id: @task.id, format: :js
      @task.reload
      expect( @task.time_elapsed ).to eq(90)
    end

    it "successfully receives elapsed time value" do
      patch :submit_time, current_time: "30", id: @task.id, format: :js
      expect(response.status).to eq(200)
    end

  end

end
