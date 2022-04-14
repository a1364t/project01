User.destroy_all

u1 = User.create :email => 'ab@ga.co', :name => 'Alex', :family => 'Yue', :password => 'chicken'
u2 = User.create :email => 'alireza@ga.co', :name => 'Alireza', :family => 'Talaei', :password => 'chicken', :admin => true
u3 = User.create :email => 'smith@ga.co', :name => 'John', :family => 'Smith', :password => 'chicken'
u4 = User.create :email => 'Gordon@ga.co', :name => 'Gordon', :family => 'wallace', :password => 'chicken'
u5 = User.create :email => 'sara@ga.co', :name => 'Steve', :family => 'Innis', :password => 'chicken'
u6 = User.create :email => 'mama@ga.co', :name => 'Peter', :family => 'Smith', :password => 'chicken'

puts "#{User.count} created"

Sell.destroy_all
s1 = Sell.create :address => 'Meadobank', :price => 800000, :room => 2, :bath => 1, :property => 'Appartment', :available => '2022-04-30' 
s2 = Sell.create :address => 'Wollongong', :price => 1900000, :room => 2, :bath => 1, :property => 'House', :available => '2022-04-30' 
s3 = Sell.create :address => 'Ryde', :price => 1750000, :room => 1, :bath => 1, :property => 'TownHouse', :available => '2022-04-30'
s4 = Sell.create :address => 'Kensington', :price => 1800000, :room => 5, :bath => 3, :property => 'House', :available => '2022-04-30'
s5 = Sell.create :address => 'Bluemountain', :price => 2000000, :room => 3, :bath => 2, :property => 'House', :available => '2022-04-30'
s6 = Sell.create :address => 'Paramatta', :price => 700000, :room => 2, :bath => 2, :property => 'Appartment', :available => '2022-04-30'
puts "#{Sell.count} created"


Rent.destroy_all
r1 = Rent.create :address =>'Castle Hills', :price => 500, :room => 2, :bath => 2, :property => 'Appartment', :available => '2022-04-30'
r2 = Rent.create :address =>'Gladsville', :price => 600, :room => 3, :bath => 2, :property => 'Appartment', :available => '2022-04-30'
r3 = Rent.create :address =>'Chatswood', :price => 400, :room => 3, :bath => 2, :property => 'House', :available => '2022-04-30'
r4 = Rent.create :address =>'Lane Cove', :price => 700, :room => 3, :bath => 2, :property => 'Appartment', :available => '2022-04-30'
r5 = Rent.create :address =>'North Ryde', :price => 600, :room => 5, :bath => 3, :property => 'House', :available => '2022-04-30'
r6 = Rent.create :address =>'Mascot', :price => 500, :room => 2, :bath => 1, :property => 'Unit', :available => '2022-04-30'

puts "#{Rent.count} created"

Agent.destroy_all
a1 = Agent.create :title => 'MMJ', :name => 'Steve', :phone => '0481953661'
a2 = Agent.create :title => 'Raywhite', :name => 'Elizabeth', :phone => '0451265541' 

puts "#{Agent.count} created"

puts "rents and sells"
    s1.rents << r1
    s2.rents << r3
    s3.rents << r5
    s6.rents << r6

puts "sells and rents"
    r2.sells << s1 << s2 << s6
    r3.sells << s2 
    r4.sells << s3

puts "Users and Rents"
    u1.sells << s1 << s2 << s3
    u2.sells << s4 << s5 << s6
puts "Users and Sells"
    u2.rents << r1 << r2 << r3

puts "rents and agents"
    a1.rents << r1 << r2 << r3
    a2.rents << r4 << r5 << r6

puts "sells and agents"
    a1.sells << s1 << s2 << s3
    a2.sells << s4 << s4 << s6


