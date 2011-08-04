Given /^I am logged in$/ do
  @user = Factory.create()
  Given %Q{I am on the sign in page}
  And   %Q{I fill in "#{@user.email}" for "Email"}
  And   %Q{I fill in "password" for "Password"}
  Then  %Q{I press "Sign in"}
end