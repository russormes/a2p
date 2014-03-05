require 'spec_helper'

describe DiscreteAreaOfDevelopment do
 it "has a valid factory" do
    FactoryGirl.create(:discrete_area_of_development).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:discrete_area_of_development, name: nil).should_not be_valid
  end
  it "is invalid without a description" do
    FactoryGirl.build(:discrete_area_of_development, description: nil).should_not be_valid
  end

end
