User.destroy_all
u0 = User.create :email => 'jim@mail.com', :password => 'chicken', :username => 'JamJimmy', :admin => true
u1 = User.create :email => 'joe@mail.com', :password => 'chicken', :username => 'JoeSmith'
u2 = User.create :email => 'james@mail.com', :password => 'chicken', :username => 'JamesSmith'
puts "#{User.count} users."

Shop.destroy_all
s0 = Shop.create :shop_name => "Jim's Jams", :users => [User.first]
s1 = Shop.create :shop_name => "The Smith Bro's", :users => [User.second,User.third]
puts "#{Shop.count} shops."