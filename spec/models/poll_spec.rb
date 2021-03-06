require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Poll do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :content => "value for content"
    }
  end

  it "should create a new instance given valid attributes" do
    Poll.create!(@valid_attributes)
  end
end
