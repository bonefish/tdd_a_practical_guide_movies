require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Movie do
  before(:all) do
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

  it "should not be valid when these is nil data - Test 10" do
    Movie.new.should_not be_valid
  end

  it "should not be valid when the name is an empty string - Test 11" do
    movie=Movie.new
    movie.name=""
    movie.should_not be_valid
  end
  
  it "should have an error on name when there is no data - Test 10" do
    Movie.new.should_not be_valid
    Movie.new.should have(1).error_on(:name)
  end
  
  it "should have an error on name when the name is an empty string - Test 11" do
    movie=Movie.new
    movie.name=""
    movie.should_not be_valid
    movie.should have(1).error_on(:name)
  end

  it "should be able to be renamed - Test 9" do
    movie = Movie.create!(@valid_attributes)
    @new_name = "new name"
    movie.name = @new_name 
    movie.save.should be_true
    movie.name.should equal(@new_name)
  end
  
  it "should not be able to be renamed to a null name - Test 12" do
    movie = Movie.create!(@valid_attributes)
    @new_name = nil
    movie.name = @new_name 
    movie.should_not be_valid
  end

  it "should not be able to be renamed to a blank name - Test 13" do
    movie = Movie.create!(@valid_attributes)
    @new_name = ""
    movie.name = @new_name 
    movie.should_not be_valid
  end

end
