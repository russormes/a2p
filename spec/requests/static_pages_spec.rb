require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

     
      it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("A2P | Home")
    end
     
  
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
end

  

