# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Badge.delete_all
Checkpoint.delete_all

jennyd = User.create(username: "jennyd", email: "jenny@d.com", first_name: "Jenny", last_name: "D", password: "jennyd", password_confirmation: "jennyd")

badger = Badge.create(user_id: jennyd.id, title: "Make a site", description: "Just a badge")
Checkpoint.create(badge_id: badger.id, title: "Put some Ruby on some Rails")
Checkpoint.create(badge_id: badger.id, title: "Style it")
Checkpoint.create(badge_id: badger.id, title: "Show mom")

badger1 = Badge.create(user_id: jennyd.id, title: "Run 6 miles nonstop", description: "Operation: Run Forrest")
Checkpoint.create(badge_id: badger1.id, title: "Run 1 mile")
Checkpoint.create(badge_id: badger1.id, title: "Run 3 miles nonstop")
Checkpoint.create(badge_id: badger1.id, title: "Run 5 miles nonstop")
Checkpoint.create(badge_id: badger1.id, title: "Run 6 miles nonstop")