require 'spec_helper'

describe Pupil do
  it "has a valid factory" do
    FactoryGirl.create(:pupil).should be_valid
  end
  it "is invalid without a givenname" do
    FactoryGirl.build(:pupil, given_name: nil).should_not be_valid
  end
  it "is invalid without a surname" do
    FactoryGirl.build(:pupil, surname: nil).should_not be_valid
  end
  it "returns a pupil's full name as a string" do
    pupil = FactoryGirl.create(:pupil, given_name: "John", surname: "Doe")
    pupil.name.should == "John Doe"
  end
  it "has a valid url for the image path" do
    FactoryGirl.build(:pupil, image_path: "http://www.ormesr").should_not be_valid
  end
end
#
#describe Pupil do
#
#  before { @pupil = Pupil.new(given_name: "Example", family_name: "User", image_path: "http://www.pxleyes.com/images/contests/rails-crossing/fullsize/sourceimage.jpg") }
#
#  subject { @pupil }
#
#  it { should respond_to(:given_name) }
#  it { should respond_to(:surname) }
#  
#  it { should be_valid }
#
#  describe "when family name is not present" do
#    before { @pupil.family_name = " " }
#    it { should_not be_valid }
#  end
#  
#  describe "when given name is not present" do
#    before { @pupil.given_name = " " }
#    it { should_not be_valid }
#  end
#  
#  describe "when image path is not valid" do
#    before { @pupil.image_path = "http://www.ormesr"}
#    it { should_not be_valid}
#  end
#end