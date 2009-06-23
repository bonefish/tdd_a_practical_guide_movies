Given /^that I have created a movie "(.*)"$/ do |name|
  Movie.create!(:name => name)
end
