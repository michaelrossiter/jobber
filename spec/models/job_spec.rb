require 'spec_helper'

describe Job do
  before do
    @job = Job.new(name: "Waiter")
  end

  subject { @job }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when job name is not present" do
    before { @job.name = " " }
    it { should_not be_valid }
  end

  describe "when job name is already taken" do
    before do
      job_with_same_name = @job.dup
      job_with_same_name.name = @job.name.upcase
      job_with_same_name.save
    end

    it { should_not be_valid }
  end
end