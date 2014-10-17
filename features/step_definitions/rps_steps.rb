Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should see "(.*?)"$/)do |text|
  page.should have_content(text)
end

Given(/^I have entered my name$/) do
  visit '/'
  click_on("Begin")
  fill_in "name", with: "Andrew"
end

When(/^I choose "(.*?)"$/) do |weapon|
  ("choose radio_weapon")
end

When(/^Computer chooses "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

