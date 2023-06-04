puts "🌱 Seeding data..."

# Make 10 users
10.times do
  User.create(name: Faker::Name.name)
end

# Make 50 products
50.times do
  product = Product.create(
    name: Faker::Name.name,
    price: rand(0..60) # random number between 0 and 60
  )

  rand(1..5).times do
    user = User.order('RANDOM()').first

    Review.create(
      star_rating: rand(1..5),
      comment: "I would buy this product a million times!",
      product: product,
      user: user
    )
  end
end

puts "🌱 Done seeding!"
