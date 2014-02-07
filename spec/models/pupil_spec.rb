require 'spec_helper'

#describe Pupil do
#  it "has a valid factory" do
#    FactoryGirl.create(:pupil).should be_valid
#  end
#  it "is invalid without a givenname" do
#    FactoryGirl.build(:pupil, given_name: nil).should_not be_valid
#  end
#  it "is invalid without a familyname" do
#    FactoryGirl.build(:pupil, family_name: nil).should_not be_valid
#  end
#  it "returns a pupil's full name as a string" do
#    pupil = FactoryGirl.create(:pupil, given_name: "John", family_name: "Doe")
#    pupil.name.should == "John Doe"
#  end
#end

describe Pupil do

  before { @pupil = Pupil.new(given_name: "Example", family_name: "User") }

  subject { @pupil }

  it { should respond_to(:given_name) }
  it { should respond_to(:family_name) }
  
  it { should be_valid }

  describe "when family name is not present" do
    before { @pupil.family_name = " " }
    it { should_not be_valid }
  end
  
  describe "when given name is not present" do
    before { @pupil.given_name = " " }
    it { should_not be_valid }
  end
end