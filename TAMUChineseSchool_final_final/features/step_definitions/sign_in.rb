Given(/^I do not exist as a user$/) do
end

When(/^I sign in with valid credentials$/) do
  visit '/users/sign_in'
  fill_in('Email', :with => 'test@example.com')
  fill_in('Password', :with => 'please123')
  click_button('Sign in')
end

Then(/^I see an invalid credentials message$/) do
  expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
end


Given(/^I exist as a user$/) do
  @user = User.create(:email => 'test@example.com', :password => 'please123')
  @user.save
end

Given(/^I am not signed in$/) do
end

Then(/^I see a success message$/) do
  expect(page).to have_content I18n.t 'devise.sessions.signed_in'
end

When(/^I sign in with a wrong email$/) do
  visit '/users/sign_in'
  fill_in('Email', :with => 'invalid@email.com')
  fill_in('Password', :with => '12345')
  click_button('Sign in')
end

Then(/^I see an invalid email message$/) do
  expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
end

When(/^I sign in with a wrong password$/) do
  visit '/users/sign_in'
  fill_in('Email', :with => 'test@example.com')
  fill_in('Password', :with => '12345')
  click_button('Sign in')
end

Then(/^I see an invalid password message$/) do
  expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'email'
end