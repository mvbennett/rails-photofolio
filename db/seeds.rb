# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Photograph.destroy_all
Gallery.destroy_all
User.destroy_all

mike = User.new(email: 'mike@mike.com', password: ENV['password'])
mike.save!

gallery = Gallery.new(title: 'all')
gallery.user = mike
gallery.save!

uploads = [
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/1_elpxo7.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/2_rcridv.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/7_tuukaw.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/6_blq1xj.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/8_lefayh.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/9_nhfgxe.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/3_iirf83.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/4_ldcjwt.jpg',
  'https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/5_kzoraz.jpg'
]

uploads.each_with_index do |url, index|
  photo = URI.open(url)
  photograph = Photograph.new(title: "#{index + 1}")
  photograph.gallery = gallery
  photograph.photo.attach(io: photo, filename: "#{index + 1}.jpg", content_type: 'image/jpg')
  photograph.save!
end

mike.save!

mike.galleries.first.photographs.each do |pho|
  puts pho.title
end

# photo_one = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/1_elpxo7.jpg')
# photo_two = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/2_rcridv.jpg')
# photo_three = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295281/photofolio/7_tuukaw.jpg')
# photo_four = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/6_blq1xj.jpg')
# photo_five = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/8_lefayh.jpg')
# photo_six = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295279/photofolio/9_nhfgxe.jpg')
# photo_seven = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/3_iirf83.jpg')
# photo_eight = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/4_ldcjwt.jpg')
# photo_nine = URI.open('https://res.cloudinary.com/dduinomn4/image/upload/v1668295277/photofolio/5_kzoraz.jpg')

# mike.photos.attach(io: photo_one, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_two, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_three, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_four, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_five, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_six, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_seven, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_eight, filename: '1.jpg', content_type: 'image/jpg')
# mike.photos.attach(io: photo_nine, filename: '1.jpg', content_type: 'image/jpg')
# mike.save!
