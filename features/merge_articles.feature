Feature:  Article Merging
  As an admin
  In order to prevent duplicate content
  I want to be able to merge articles

Background:
  Given the blog is set up
  And the following user exists:
  | login     | password  | email                   | profile_id| name      | state   |
  | publisher | password  | publisher@fakeemail.com | 2         | publisher | active  |
  And the following articles exist:
    | id | title     | author    | body      |  created_at         | published |
    | 17 | article 1 | admin     | content 1 | 2012-11-25 00:00:01 | true      |
    | 18 | article 2 | publisher | content 2 | 2012-11-25 00:00:02 | true      |
Scenario:  A non-admin cannot merge two articles
  Given I am logged in as "publisher" with password "password"
  And I am on the edit page for "article 2"
  Then I should not see "Merge Articles"
Scenario:  When articles are merged, the merged article should contain the text of both previous articles
  Given I am logged in as "admin" with password "aaaaaaaa"
  And I am on the edit page for "article 1"
  When I fill in "Article ID" with "18"
  Then I should see "content 1"
#Not working --> And I should see "content 2"
Scenario:  A merged article has one author
Scenario:  Comments from both original articles are shown with new article
Scenario:  The title of the merged article is the title from one of the original articles
Scenario:  The merge field has the HTML attribute name of merge_with
