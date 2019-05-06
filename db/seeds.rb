# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

for i in 0...12
Blog.create([{
                 title: Faker::Artist.name,
                 content:Faker::Markdown.sandwich(12, 3),
             }])
end

 for i in 0...12
   Project.create([{
                    title: Faker::Artist.name,
                    location:Faker::Address.city,
                    client:Faker::Company.name,
                    rating:Faker::Number.between(1, 5)
                }])
 end


for i in 0...10
Review.create([{
                 name: Faker::Artist.name,
                 review:Faker::Lorem.paragraph,
                 rating:Faker::Number.between(1, 5)
             }])
end