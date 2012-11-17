Given /^a user visits the signup page$/ do
  visit signup_path
end

When /^he submits invalid signup information$/ do
  click_button "Sign up now!"
end

#Then /^he should see an error message$/ do
#  page.should have_selector('div.alert.alert-error')
#end

Given /^the user not has account$/ do
  @user = nil;
end

When /^the user submits valid signup information$/ do
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
  click_button "Sign up now!"
end

Then /^he should see a welcome message$/ do
  page.should have_selector('div.alert.alert-success')
end

#Then /^he should see his profile page$/ do
#  page.should have_selector('title', text: @user.name)
#end

#Then /^he should see a signout link$/ do
#  page.should have_link('Sign out', href: signout_path)
#end

