User.destroy_all
u0 = User.create :email => 'jim@mail.com', :password => 'chicken', :username => 'JamJimmy', :admin => true
u1 = User.create :email => 'joe@mail.com', :password => 'chicken', :username => 'JoeSmith'
u2 = User.create :email => 'james@mail.com', :password => 'chicken', :username => 'JamesSmith'
puts "#{User.count} users."

Shop.destroy_all
s0 = Shop.create :shop_name => "Jim's Jams", :users => [u0]
s1 = Shop.create :shop_name => "The Smith Bro's", :users => [u1,u2]
puts "#{Shop.count} shops."

Product.destroy_all
p0 = Product.create :product_name => "Strawberry Jam", :shop => s0
p1 = Product.create :product_name => "Raspberry Jam", :shop => s0
p2 = Product.create :product_name => "Blueberry Jam", :shop => s0
p3 = Product.create :product_name => "Anvil", :shop => s1
p4 = Product.create :product_name => "Hammer", :shop => s1
puts "#{Product.count} products."

Cart.destroy_all
puts "Cart reset."