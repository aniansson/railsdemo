When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

# Then(/^I should see 'Some really breaking action'$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

Given(/^the following articles exist:$/) do |table|
  table.hashes.each do |hash|
  Article.create!(hash)
  end
end
