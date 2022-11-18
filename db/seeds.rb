puts "creating new products"

p1 = Product.create(item_name: "Laptop", product_type: "electronics", price: 50000)
p2 = Product.create(item_name: "Phone", product_type: "electronics", price: 20000)
p3 = Product.create(item_name: "Fax", product_type: "electronics", price: 10000)

u1 = User.create(name: "Luke", location: "Nairobi", gender: "M")
u2 = User.create(name: "Susan", location: "Quatar", gender: "F")
u3 = User.create(name: "Sandro", location: "London", gender: "M")

r1 = Review.create(comment: "quality", user_id: u1.id, product_id: p1.id)
r2 = Review.create(comment: "cheap", user_id: u2.id, product_id: p2.id)
r3 = Review.create(comment: "fast", user_id: u3.id, product_id: p3.id)

puts "done seeding"
