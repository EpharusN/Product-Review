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


  #products
  Product.create(name: "sugar", price: 450)
  Product.create(name: "cheese", price: 100)
  Product.create(name: "oil", price: 600)

#users
User.create(name: "ate")
User.create(name: "Jim")
User.create(name: "John")