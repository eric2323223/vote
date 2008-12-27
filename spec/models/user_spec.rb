require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @valid_attributes = {
      :uid => "value for uid",
      :password => "value for password"
    }
  end

  it "should be able to identify admin" do
  	eric = User.new
  	eric.uid = "eric"
  	eric.is_admin?.should == true
  end
end
