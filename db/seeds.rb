# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(email: "user@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Test", last_name: "User")
puts '1 user created'

20.times do |status_update|
	StatusUpdate.create!(status_post: "Lorem ipsum dolor sit amet.", user_id: User.last.id)
end
puts '20 status updates created!'
