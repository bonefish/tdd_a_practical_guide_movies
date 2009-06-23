Feature: Movies
In order to keep track of movies
People should be able to
Create a list of movies

Scenario: List Movies
Given that I have created a movie "Star Wars"
When I go to the movies page
Then I should see "Star Wars"

Scenario: Add a Movie
When I go to the movies page
When I follow "Create New"
When I fill in "Name" with "The Godfather"
And I press "Create"
Then I should see "Movies"
And I should see "The Godfather"
