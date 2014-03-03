require 'spec_helper'

describe StatementOfAchievement do
  it "has a valid factory" do
    FactoryGirl.create(:statement_of_achievement).should be_valid
  end
  it "is invalid without a level" do
    FactoryGirl.build(:statement_of_achievement, level: nil).should_not be_valid
  end
  it "is invalid without a statement" do
    FactoryGirl.build(:statement_of_achievement, statement: nil).should_not be_valid
  end
end
