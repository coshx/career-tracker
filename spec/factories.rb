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
  u.address {Factory.create(:address)}
end

Factory.define :address do |a|
  a.street_1 "1234 Wynkoop St."
  a.city     "Denver"
  a.state    "CO"
  a.zip      "80202"
  a.phone    "867-5309"
end

Factory.define :achievement do |a|
  a.description "Something I did"
  a.results     "How awesome it ended"
  a.start_date  1.month.ago
  a.end_date    Time.now
  a.keywords    "Rocking"
end
