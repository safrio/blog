# encoding: utf-8

# Clear database
Rake::Task["db:reset"].invoke

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create users
user = User.new(
  :email                 => 'johndoe@example.com',
  :password              => 'secret',
  :password_confirmation => 'secret'
)

user2 = User.new(
  :email                 => 'annadoe@example.com',
  :password              => 'secret',
  :password_confirmation => 'secret'
)

user.save!
user2.save!
