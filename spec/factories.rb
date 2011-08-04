Factory.sequence :name do |i|
  "test_user_#{i}"
end

Factory.sequence(:email) do |i|
  "test_user_#{i}@tracker.com"
end

Factory.sequence(:password) do |i|
  "password_#{i}"
end

Factory.define :user do |u|
  u.name {Factory.next(:name)}
  u.email {Factory.next(:email)}
  u.password {Factory.next(:password)}
end