require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/generic_active_scaffold_controller_spec')

describe MoviesController, "should use shared template pages" do
  it_should_behave_like "All AS Controllers"
end

describe MoviesController do

  before(:all) do
    Movie.create!(:name => "Star Wars")
    @id = Movie.find :first
  end
  
  #Delete this example and add some real ones
  it "should use MoviesController" do
    controller.should be_an_instance_of(MoviesController)
  end

  it "should render for show" do
    get :show, :id=>@id
    response.should be_success
    response.should render_template("show")    
  end  
  
  it "should render for update" do
    get :edit, :id=>@id
    response.should be_success
    response.should render_template("update")    
  end  

  
end
