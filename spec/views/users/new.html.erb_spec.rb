require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/new.html.erb" do
  include UsersHelper
  
  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :uid => "value for uid",
      :password => "value for password"
    )
  end

  it "should render new form" do
    render "/users/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", users_path) do
      with_tag("input#user_uid[name=?]", "user[uid]")
      with_tag("input#user_password[name=?]", "user[password]")
    end
  end
end


