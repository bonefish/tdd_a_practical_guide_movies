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
When I fill in "Name" with "Star Wars"
And I press "Create"
Then I should see "Movies"
And I should see "Star Wars"
And I should not see "prohibited this movie from being saved"
And I should not see "problems with the following fields"


Scenario: Edit a Movie
Given that I have created a movie "Star Wars"
When I go to the movies page
When I follow "Edit"
Then I should see "Update Star Wars"
And I should see "Name"
And I should see "Star Wars"

Scenario: Show a Movie
Given that I have created a movie "Star Wars"
When I go to the movies page
When I follow "Show"
Then I should see "Show Movie"
And I should see "Name"
And I should see "Star Wars"

Scenario: After Editing I return to the movie list
Given that I have created a movie "Star Wars"
When I go to the movies page
When I follow "Edit"
And I fill in "name" with "Star Wars II"
And I press "Update"
Then I should see "Movies"
And I should see "Star Wars II"
And I should not see "prohibited this movie from being saved"
And I should not see "problems with the following fields"

Scenario: Delete a Movie
Given that I have created a movie "Star Wars"
When I go to the movies page
And I click "delete" for "Star Wars"
#When I follow "OK"
Then I should see "Movies"
# delete without javascript redirects to show for some reason
# need to run this with selenium and also look at AS bug
#And I should not see "Star Wars"
