Feature: add or delete a movie
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
 
#add 2 more new scenarios
Scenario: add new movie 
  When I am on the create page
  And I fill in "Title" with "Rush Hour"
  And I select "G" from "Rating" 
  And  I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Rush Hour"

Scenario: delete a movie 
  When I am on the detail page for "Alien"
  And  I press "Delete"
  Then I should be on the RottenPotatoes home page
  And I should see "Movie 'Alien' deleted."

