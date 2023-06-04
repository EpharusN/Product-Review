# db/seeds.rb

Product.all.each do |product|
    User.all.each do |user|
      Review.create(
        star_rating: rand(1..5),
        comment: "I would buy this product a million times!",
        product: product,
        user: user
      )
    end
  end
  