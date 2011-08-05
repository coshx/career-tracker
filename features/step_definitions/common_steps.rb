Given /^I am a registered user$/ do
  email = Factory.next(:email)
  Given %Q{I am on the sign up page}
  Given %Q{I fill in "#{Factory.next(:name)}" for "Name"}
  Given %Q{I fill in "#{email}" for "Email"}
  password = Factory.next(:password)
  Given %Q{I fill in "#{password}" for "Password"}
  Given %Q{I fill in "#{password}" for "Password confirmation"}
  And %Q{I press "Sign up"}
  @current_user = User.where(email: email).first
  Factory.create(:address, :user => @current_user)
  @current_user.save!
end

Given /^I have achievements$/ do
  @current_user.achievements = [Factory.create(:achievement),
                                Factory.create(:achievement)]
  @current_user.save!
end