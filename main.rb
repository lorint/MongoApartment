#require 'pry'
#require 'rainbow'
require 'mongoid'


Mongoid.load!("mongoid.yml", :development)


require_relative 'building'
require_relative 'apartment'
require_relative 'person'

building = nil
apartment = nil

response = nil
while response != 'q'
  if building == nil
    # Make a shallow copy of all buildings
    curBuildings = Building.all.dup
    bldNum = 1
    curBuildings.each do |b|
      print "<" + bldNum.to_s + "> " + b.to_s + " " + b._id + "\n"
      bldNum += 1
    end

    print "Select a building by number or create a new (b)uilding "
    response = gets.chomp
    if response == 'b'
      print "Address: "
      address = gets.chomp
      print "Style: "
      style = gets.chomp
      print "Num Floors: "
      num_floors = gets.to_i
      building = Building.create(address: address, style: style, num_floors: num_floors)
      building.save
    else
      bldNum = response.to_i
      building = curBuildings[bldNum - 1]
      apartment=nil
    end
  end


  if apartment == nil
    # Make a shallow copy of all buildings
    curApts = building.apartments.all.dup
    aptNum = 1
    curApts.each do |a|
      print "<" + aptNum.to_s + "> " + a.to_s + " " + a._id + "\n"
      aptNum += 1
    end

    print "Select an apartment by number or create a new (a)partment "
    response = gets.chomp
    if response == 'a'
      print "Name: "
      name = gets.chomp
      print "SqFt: "
      sqft = gets.to_i
      apartment = building.apartments.create(name: name, sqft: sqft)
      building.save
    else
      aptNum = response.to_i
      apartment = curApts[aptNum - 1]
    end
  end


  print "Build (p)erson or (s)elect a new building or (e)valuate or (q)uit: "
  response = gets.chomp.downcase
  if response == 'p'
    if building == nil
      print "Must build a building first!\n"
      next
    end
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Gender: "
    gender = gets.chomp
    print "What apt do you wish to live: "
    apt = gets.chomp
    building.apartments[apt].renters << Person.new(name, age, gender)
  elsif response == 's'
    building = nil
  elsif response == 'e'
    code = gets.chomp
    print (building.instance_eval code).to_s + "\n"
  end
end

#binding.pry
