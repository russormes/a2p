require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have content 'A2P'" do
    visit '/static_pages/home'
      expect(page).to have_content("A2P")
    end
      it "should have the title 'A2P'" do
      visit '/static_pages/home'
      expect(page).to have_title("A2P")
    end
  end
end


  

