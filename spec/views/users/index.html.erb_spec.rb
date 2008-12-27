require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/index.html.erb" do
  include UsersHelper
  
  before(:each) do
    assigns[:users] = [
      stub_model(User,
        :uid => "value for uid",
        :password => "value for password"
      ),
      stub_model(User,
        :uid => "value for uid",
        :password => "value for password"
      )
    ]
  end

  it "should render list of users" do
    render "/users/index.html.erb"
    response.should have_tag("tr>td", "value for uid".to_s, 2)
    response.should have_tag("tr>td", "value for password".to_s, 2)
  end
end

