require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

shared_examples_for "All AS Controllers" do
  it "should use active scaffold" do
    controller.active_scaffold_config.should be_true
  end
  
  it "should render the index" do
    get :index
    response.should be_success
    response.should render_template("list")    
  end  

  it "should render the list" do
    get :list
    response.should be_success
    response.should render_template("list")    
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

  it "should render for new" do
    get :new
    response.should be_success
    response.should render_template("create")    
  end

end
