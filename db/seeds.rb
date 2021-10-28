User.destroy_all
u0 = User.create :email => 'jim@mail.com', :password => 'chicken', :username => 'JamJimmy', :admin => true
u1 = User.create :email => 'joe@mail.com', :password => 'chicken', :username => 'JohnSmith'
u2 = User.create :email => 'james@mail.com', :password => 'chicken', :username => 'JamesSmith'
u3 = User.create :email => 'jane@mail.com', :password => 'chicken', :username => 'JaneDoe'
u4 = User.create :email => 'jess@mail.com', :password => 'chicken', :username => 'Jessica'
puts "#{User.count} users."

Shop.destroy_all
s0 = Shop.create :name => "Jim's Jams", :users => [u0]
s1 = Shop.create :name => "The Smith Bro's", :users => [u1,u2]
s2 = Shop.create :name => "Chair's and Stuff", :users => [u2,u3,u4]
puts "#{Shop.count} shops."

Product.destroy_all
p0 = Product.create :name => "Strawberry Jam", :shop => s0, :price => 2.50, :image => "https://swervesweet.com/public/uploads/recipes/IMG_4713-3.jpg"
p1 = Product.create :name => "Raspberry Jam", :shop => s0, :price => 2.50, :image => "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190605-raspberry-jam-031-landscape-pf-1560443834.jpg"
p2 = Product.create :name => "Blueberry Jam", :shop => s0, :price => 2.50, :image => "https://masandpas.com/wp-content/uploads/2019/07/Blueberry-jelly-make-this-homemade-basil-and-blueberry-jam-as-a-fresh-and-healthy-breakfast-spread-9.jpg"
p3 = Product.create :name => "Anvil", :shop => s1, :price => 175, :image => "https://i.ebayimg.com/images/g/Ye4AAOSw1V9eQc5S/s-l500.jpg"
p4 = Product.create :name => "Forge Hammer", :shop => s1, :price => 30, :image => "https://www.angele-shop.com/media/image/60/85/5f/00541005-Schmiedehammer-05-kg-Krenzer-1_600x600.jpg"
p5 = Product.create :name => "Forge Tongs", :shop => s1, :price => 47.50, :image => "https://m.media-amazon.com/images/I/61fxU3qODoL.jpg"
p5 = Product.create :name => "Coal Forge", :shop => s1, :price => 300, :image => "https://www.centaurforge.com/images/RMSD5R%2003.jpg"
p6 = Product.create :name => "Chair", :shop => s2, :price => 75, :image => "https://res.cloudinary.com/rjliving-/image/fetch/f_auto,q_auto/https://www.rjliving.com.au/assets/full/SW-13-11.jpg?20210309035246"
p7 = Product.create :name => "Table", :shop => s2, :price => 100, :image => "https://www.ikea.com/au/en/images/products/ekedalen-extendable-table-oak__0736964_pe740828_s5.jpg?f=s"
puts "#{Product.count} products."

Cart.destroy_all
puts "Cart reset."

Review.destroy_all
r0 = Review.create :content =>"Is good.", :user => u1, :product => p0
r1 = Review.create :content =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Faucibus interdum posuere lorem ipsum dolor sit amet. Purus in massa tempor nec feugiat nisl pretium. Neque sodales ut etiam sit amet nisl purus in. Mauris nunc congue nisi vitae suscipit tellus. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Velit egestas dui id ornare arcu. Consectetur lorem donec massa sapien faucibus et. Tincidunt eget nullam non nisi est sit amet. Pretium lectus quam id leo in vitae turpis. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Habitant morbi tristique senectus et. Duis at consectetur lorem donec massa sapien faucibus. Ornare suspendisse sed nisi lacus sed viverra tellus in.", :user => u2, :product => p0
r2 = Review.create :content =>"Not just good for forging, it's good for... other things.", :user => u4, :product => p4
r3 = Review.create :content =>"IT'S NOT BLUE ENOUGH!", :user => u1, :product => p2
r4 = Review.create :content =>"Is okay.", :user => u1, :product => p0
r5 = Review.create :content =>"I like the red colour.", :user => u4, :product => p1
puts "#{Review.count} reviews."