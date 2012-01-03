require 'spec_helper'

describe User do
  it "should create a new instance given a valid attribute" do
    User.create!(:name => "Example User", :email => "example@example.com")
  end

  it "should require name" do
    no_name_user = User.new(:email => "example@example.com")
    no_name_user.should_not be_valid
  end

  it "should require email" do
    no_email_user = User.new(:name => "Example User")
    no_email_user.should_not be_valid
  end

end
