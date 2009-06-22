require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Movie do
  before(:each) do
    @valid_attributes = {
      :name => "Star Wars"
    }
  end

  it "should create a new instance given valid attributes" do
    Movie.create!(@valid_attributes)
  end

  it "should be valid" do
    Movie.new(@valid_attributes).should be_valid
  end

  it "should not be valid when these is no data" do
    Movie.new.should_not be_valid
  end

end
