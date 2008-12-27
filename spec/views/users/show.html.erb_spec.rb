require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :uid => "value for uid",
      :password => "value for password"
    )
  end

  it "should render attributes in <p>" do
    render "/users/show.html.erb"
    response.should have_text(/value\ for\ uid/)
    response.should have_text(/value\ for\ password/)
  end
end

