# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'

pwd = 'password'

mike = User.create! :name => 'Mike Hickman', :email => 'mike@coshx.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << mike.name
david = User.create! :name => 'David Kovsky', :email => 'david@coshx.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << david.name
sean = User.create! :name => 'Sean Luckett', :email => 'sean@coshx.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << sean.name


guest1 = User.create! :name => 'Jed Judgerson', :email => 'jed@judge.net', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << guest1.name

guest2 = User.create! :name => 'Jerry Judgemental', :email => 'jerry@judge.net', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << guest2.name

guest3 = User.create! :name => 'Carl Critical', :email => 'carl@judge.net', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << guest3.name

guests = [guest1, guest2, guest3]


guest_address = {:street_1 => '1549 Law Court', :city => 'Springfield', :state => 'NA', :zip => "81007", :phone => '867-5309'}
guests.each do |guest|
  guest.address = guest_address
  puts "Assigned #{guest_address} as #{guest}'s address."
end



pos = Position.create! :title => 'Reality TV Judge', :description => "Was subjected to some of the worst performances I've ever seen, sprinkled with great ones, and managed to survive and judge without prejudice.",
                       :start_date => 1.year.ago

puts "New position #{pos.title} created."

work_place = Institution.create! :name => 'Some Had Talent Productions', :type => 'Professional'
puts "New institution #{work_place.name} created."

pos.institution = work_place
pos.save!



achievements = [{:description => 'Judged a lot of talentless people.', :results => 'The entertainment world is better off without them.', :keywords => 'Judgment', :start_date => 3.months.ago, :end_date => 1.month.ago},
                {:description => 'Dazzled audiences all over the country.', :results => 'Production company made a gazillion dollars in one month.', :keywords => 'Judgment', :start_date => 3.months.ago, :end_date => 1.month.ago},
                {:description => 'Directed a merchandise tie-in commercial.', :results => 'Increased ad revenue 5% in two weeks.', :keywords => 'Judgment', :start_date => 3.months.ago, :end_date => 1.month.ago}]

guests.each do |user|
  achievements.each {|ach| user.achievements << Achievement.create!(ach)}
  user.save!
end
