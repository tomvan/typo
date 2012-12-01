Feature:  Blogging Categories
  As an admin
  In order to properly box content
  I want to be able to create and edit blogging categories

Background:
  Given the blog is set up

Scenario:  Navigate to the categories page
  Given I am logged into the admin panel
  When I follow "Categories"
  Then I should be on the categories page
