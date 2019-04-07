# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TeamMember.destroy_all
UserSpeciality.destroy_all
Speciality.destroy_all
Team.destroy_all
User.destroy_all

#specialities
specialities = Speciality.create([
{name: "Ortho"},
{name: "cardiac"},
{name: "general"},
{name: "neuro"}
])

puts "User specialities seeded"

#users
user1 = User.create(firstname: "taniya", lastname: "amidon", onleave: false, bio: "is a  nurse", photo: "https://images.unsplash.com/photo-1548992644-aae87f193063?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
user2 = User.create(firstname: "gab", lastname: "camarda", onleave: true, bio: "is a  doctor", photo: "https://images.unsplash.com/photo-1548992644-aae87f193063?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
user3 = User.create(firstname: "peter", lastname: "smith", onleave: false, bio: "is an admin", photo: "https://images.unsplash.com/photo-1548992644-aae87f193063?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

puts "users seeded"

userspec1 = UserSpeciality.create(user: user1, speciality: specialities[0])
userspec1 = UserSpeciality.create(user: user2, speciality: specialities[1])
userspec1 = UserSpeciality.create(user: user3, speciality: specialities[2])

puts "users spec seeded"



team1 = Team.create(name: "morning shift")
team2 = Team.create(name: "afternoon shift")
team3 = Team.create(name: "night shift")


teammember1 = TeamMember.create(user: user1, team: team1)
teammember2 = TeamMember.create(user: user2, team: team1)
teammember3 = TeamMember.create(user:user3, team: team3)

puts "team members created"

puts "done"