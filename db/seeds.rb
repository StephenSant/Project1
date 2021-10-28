User.destroy_all
u0 = User.create :email => 'jim@mail.com', :password => 'chicken', :username => 'JamJimmy', :admin => true
u1 = User.create :email => 'joe@mail.com', :password => 'chicken', :username => 'JoeSmith'
u2 = User.create :email => 'james@mail.com', :password => 'chicken', :username => 'JamesSmith'
puts "#{User.count} users."

Shop.destroy_all
s0 = Shop.create :name => "Jim's Jams", :users => [u0]
s1 = Shop.create :name => "The Smith Bro's", :users => [u1,u2]
puts "#{Shop.count} shops."

Product.destroy_all
p0 = Product.create :name => "Strawberry Jam", :shop => s0, :price => 5
p1 = Product.create :name => "Raspberry Jam", :shop => s0, :price => 5
p2 = Product.create :name => "Blueberry Jam", :shop => s0, :price => 5
p3 = Product.create :name => "Anvil", :shop => s1, :price => 45
p4 = Product.create :name => "Hammer", :shop => s1, :price => 15
puts "#{Product.count} products."

Cart.destroy_all
puts "Cart reset."

Review.destroy_all
r0 = Review.create :content =>"Is good.", :user => u1, :product => p0
r1 = Review.create :content =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Faucibus interdum posuere lorem ipsum dolor sit amet. Purus in massa tempor nec feugiat nisl pretium. Neque sodales ut etiam sit amet nisl purus in. Mauris nunc congue nisi vitae suscipit tellus. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Velit egestas dui id ornare arcu. Consectetur lorem donec massa sapien faucibus et. Tincidunt eget nullam non nisi est sit amet. Pretium lectus quam id leo in vitae turpis. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Habitant morbi tristique senectus et. Duis at consectetur lorem donec massa sapien faucibus. Ornare suspendisse sed nisi lacus sed viverra tellus in.", :user => u2, :product => p0
puts "#{Review.count} reviews."