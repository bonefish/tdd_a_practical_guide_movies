Given /^that I have created a movie "(.*)"$/ do |name|
  Movie.create!(:name => name)
end

When /^I click "delete" for "(.*)"$/ do |name|
  movie = Movie.find_by_name(name)
  within("table > tbody > tr#movies-list-"+movie.id.to_s+"-row") do
    click_link "Delete"
  end
end