require 'rails_helper'

RSpec.describe Task, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "task state and times are set to 0 by default when initialised" do
    it "has a state and time value of 0" do
      task = Fabricate(:task, time_elapsed: nil, time_est: nil, state: nil)
      task.ensure_default_state
      expect(task.state).to eq "incomplete"
      expect(task.time_elapsed).to eq 0
      expect(task.time_est).to eq 0
    end
  end

  describe "time values are output in worded time format" do
    before(:each) do
      @task = Fabricate(:task, time_elapsed: 300, time_est: 60)
    end
    
    it "Elapsed time value shows worded time" do
      expect( @task.nice_time_elapsed ).to eq("5 mins")
    end

    it "Estimated time value shows worded time" do
      expect( ChronicDuration.output(@task.time_est) ).to eq("1 min")
    end

  end

  describe "Elapsed time gets added to current time" do
    before(:each) do
      @task = Fabricate(:task, time_elapsed: 60)
    end

    it "Adds elapsed time value" do
      @task.add_to_elapsed_time("30")
      @task.save
      @task.reload
      expect( @task.time_elapsed ).to eq(90)
    end

  end

  describe "Discrepancy value shows the difference between elapsed and estimated time" do
    before(:each) do
      @task = Fabricate(:task, time_est: 90, time_elapsed: 60)
    end

    it "The value matches the difference between times" do
      expect( @task.discrepancy ).to eq("30 secs")
    end

  end

end
