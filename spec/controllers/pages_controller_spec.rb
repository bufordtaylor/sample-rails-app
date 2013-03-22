require 'spec_helper'

describe PagesController do
  render_views

  describe "home page" do

    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have the h1 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', :content => "Sample App")
    end

    it "should have a non blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end

  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/contact'
      page.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Contact")
    end

    it "should have the h1 'Sample App'" do
      visit '/pages/contact'
      page.should have_selector('h1', :content => "Sample App")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | About")
    end

    it "should have the h1 'Sample App'" do
      visit '/pages/about'
      page.should have_selector('h1', :content => "Sample App")
    end
  end

end
