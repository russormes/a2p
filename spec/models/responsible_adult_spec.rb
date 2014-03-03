require 'spec_helper'

describe ResponsibleAdult do

  it "has a valid factory" do
    FactoryGirl.create(:responsible_adult).should be_valid
  end
  it "is invalid without a Given name" do
    FactoryGirl.build(:responsible_adult, given_name: nil).should_not be_valid
  end
    it "is invalid without a  surname" do
    FactoryGirl.build(:responsible_adult, surname: nil).should_not be_valid
  end
  it "is invalid without a title" do
    FactoryGirl.build(:responsible_adult, job_title: nil).should_not be_valid
  end
    it "is invalid without a responsibility" do
    FactoryGirl.build(:responsible_adult, responsibility: nil).should_not be_valid
  end
end