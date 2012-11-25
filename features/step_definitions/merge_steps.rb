Given /^the following article[s]? exist[s]?:$/ do |articles|
  articles.hashes.each do |article|
    Article.create!(article)
  end
end

Given /^the following user[s]? exist[s]?:$/ do |users|
  users.hashes.each do |user|
    User.create!(user)
  end
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |login,password|
  visit '/accounts/login'
  fill_in 'user_login', :with => login
  fill_in 'user_password', :with => password
  click_button 'Login'
end
