require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the h1 'Virro'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Virro')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Virro")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end


  
  describe "Help page" do
    
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the base title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Virro")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_selector('title', :text => '| Help')
    end
end
  
  describe "About page" do
    it "should have the h1 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Me')
    end
    it "should have the base title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Virro")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/about'
      page.should_not have_selector('title', :text => '| About Me')
    end
  end
end



