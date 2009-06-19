require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/generic_active_scaffold_controller_spec')

describe MoviesController, "should use shared template pages" do
  it_should_behave_like "All AS Controllers"
end

describe MoviesController do

  #Delete this example and add some real ones
  it "should use MoviesController" do
    controller.should be_an_instance_of(MoviesController)
  end

end
