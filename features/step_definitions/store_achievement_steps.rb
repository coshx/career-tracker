When /^I enter an achievement$/ do
  When %Q{I fill in "Description" with "I did super awesome great things."}
  When %Q{I fill in "Results" with "The company went from 2 employees to 10000 in a week."}
  When %Q{I fill in "Keywords" with "finance, growth, awesome"}
  When %Q{I fill in "Start date" with "#{1.month.ago.to_s}"}
  When %Q{I fill in "End date" with "#{1.week.ago.to_s}"}
end

Then /^my achievement is saved in the database$/ do
  @current_user.achievements.count.should == 1
end

Then /^I see a confirmation message$/ do
  pending # express the regexp above with the code you wish you had
end
