Feature:  Blogging Categories
  As an admin
  In order to properly box content
  I want to be able to create and edit blogging categories

Background:
  Given the blog is set up

Scenario:  Navigate to the Categories page
  Given I am logged into the admin panel
  When I follow "Categories"
  Then I should be on the new categories page

Scenario:  Create a new Category
  Given I am on the new categories page
  When I fill in "Name" with "Politics"
  And I fill in "Keywords" with "keyword"
  And I fill in "Description" with "For political articles"
  And I press "Save"
  Then I should see "Politics"
  And "I should see "keyword"
  And "I should see "For political articles"
