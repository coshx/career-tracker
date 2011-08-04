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

mike = User.create! :name => 'Mike Hickman', :email => 'mhickman84@gmail.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << mike.name
david = User.create! :name => 'Mike Hickman', :email => 'mhickman84@gmail.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << david.name
sean = User.create! :name => 'Mike Hickman', :email => 'mhickman84@gmail.com', :password => pwd, :password_confirmation => pwd
puts 'New user created: ' << sean.name
