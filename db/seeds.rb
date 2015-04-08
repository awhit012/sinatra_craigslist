require 'faker'

5.times do
  Category.create(title: Faker::Commerce.department)
end

cats = Category.all

cats.each do |cat|
   3.times do
    cat.posts << Post.create(
      title:       Faker::Lorem.sentence,
      description: Faker::Lorem.sentence(3),
      email:       Faker::Internet.email,
      price:       (Faker::Number.digit).to_i,
      url:         (1..1000000).to_a.sample.to_s(16)
      )
  end
end


