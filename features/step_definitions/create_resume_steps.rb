Then /^I should see a basic resume$/ do
  Then %Q{I should see "#{@current_user.name}"}
  Then %Q{I should see "#{@current_user.email}"}
  Then %Q{I should see "#{@current_user.address.street_1}"}
  Then %Q{I should see "#{@current_user.address.state}"}
  Then %Q{I should see "#{@current_user.address.phone}"}
end

Then /^I should see a list of my achievements$/ do
  false.should == true if @current_user.achievements.blank?
  @current_user.achievements.each { |achievement| Then %Q{I should see "#{achievement.description}"} }
end

Then /^my resume is saved$/ do
  @current_user.resumes.count.should == 1
end

Then /^I see my resume's title$/ do
  And %Q{I should see "#{@current_user.resumes.first.title}"}
end
