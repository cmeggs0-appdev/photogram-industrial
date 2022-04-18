# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

20.times do
  users = User.new(
    email: Faker::Internet.email,
    username: Faker::Games::Pokemon.name,
    private: Faker::Boolean.boolean
  )
  users.save
end

# 20.times do
#   user = User.order("RAND()").first(
#     user.photo.create(caption: Faker::Movies::HarryPotter.quote,
#     image: Faker::LoremFlickr.image)
#   )
# end

20.times do
  user = User.all.sample
  userid = user.object_id
  photos = Photo.new(
    image: Faker::LoremFlickr.image,
    caption: Faker::Movies::HarryPotter.quote,
    owner_id: userid
  )
end

# 20.times do
#   likes = Like.new(
#     photo_id: Photo.all.sample.object_id,
#     fan_id: User.all.sample.object_id
#   )
#   likes.save
# end

# 10.times do
#   status_options = ['pending', 'accepted', 'rejected']
#   follow_requests = FollowRequest.new(
#     recipient_id: User.all.sample.object_id,
#     sender_id: User.all.sample.object_id,
#     status: status_options.sample
#   )
#   follow_requests.save
# end
