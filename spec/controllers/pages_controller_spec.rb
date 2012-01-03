require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
      it "returns http success" do
        get 'home'
        response.should be_success
      end
   
      it "should have the right title" do
        get 'home'
        response.should have_selector("title", :content => "#{@base_title} | Home")
      end
   
      it "should have a non-blank boyd" do
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
      get 'contact'
      response.should have_selector("title", :content => "#{@base_title} | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "#{@base_title} | About")
    end
  end

  describe "GET 'tukaiz'" do
    it "returns http success" do
      get 'tukaiz'
      response.should be_success
    end

    it "should have the right title" do
      get 'tukaiz'
      response.should have_selector("title", :content => "#{@base_title} | Tukaiz")
    end
  end

end
