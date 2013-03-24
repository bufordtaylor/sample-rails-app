require 'spec_helper'

describe PagesController do
  render_views

  subject { page }

  describe "home page" do

    before { visit root_path }

    it "returns http success" do
      response.should be_success
    end

    it { should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Home") }

    it { should have_selector('h1', :content => "Sample App") }

    it "should have a non blank body" do
      response.body.should_not =~ /<body>\s*<\/body>/
    end

  end

  describe "GET 'contact'" do

    before { visit contact_path }
    it "returns http success" do
      response.should be_success
    end

    it { should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Contact") }

    it { should have_selector('h1', :content => "Sample App") }
  end

  describe "GET 'about'" do

    before { visit about_path }

    it "returns http success" do
      response.should be_success
    end

    it { should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | About") }

    it { should have_selector('h1', :content => "Sample App") }
  end

end
