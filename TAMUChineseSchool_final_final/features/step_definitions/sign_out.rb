Given(/^I am signed in$/) do
  user = FactoryGirl.create(:user)
  visit '/users/sign_in'
  fill_in('Email', :with => user.email)
  fill_in('Password', :with => user.password)
  click_button('Sign in')
  expect(page).to have_content I18n.t 'devise.sessions.signed_in'
end

When(/^I sign out$/) do
  click_link 'Sign out'
end

Then(/^I see a signed out message$/) do
  expect(page).to have_content I18n.t 'devise.sessions.signed_out'
end