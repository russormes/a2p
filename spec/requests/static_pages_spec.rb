require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have content 'A2P'" do
      visit '/static_pages/home'
      expect(page).to have_content("A2P")
    end
     it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "A2P | Home")
    end
  end
  
  describe "About page" do
    it "Should have content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About us")
    end
      it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "A2P | About")
    end
  end
  
  describe "Help page" do
    it "should have contents 'Help page'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help page")
    end
      it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "A2P | Help")
    end
  end
end
