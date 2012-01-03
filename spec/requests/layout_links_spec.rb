require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
        get '/'
        response.should have_selector('title', :content => "Home")
      end

      it "should have a Contact page at '/contact'" do
        get '/contact'
        response.should have_selector('title', :content => "Contact")
      end

      it "should have a About page at '/about'" do
        get '/about'
        response.should have_selector('title', :content => "About")
      end


      it "should have the right links" do
        visit root_path
        response.should have_selector('title', :content => "Home")
        click_link "About"
        response.should have_selector('title', :content => "About")
        click_link "Home"
        response.should have_selector('title', :content => "Home")
        click_link "Contact"
        response.should have_selector('title', :content => "Contact")
      end
end