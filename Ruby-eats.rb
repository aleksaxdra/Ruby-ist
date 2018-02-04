restaurants = {
  GreenValley: 7.2,
  Steakhouse: 9.1
}

puts "Hi. What would you like to do? Choose -> add -> display -> update -> delete"
choice = gets.chomp

case choice

  when "add"
    puts "What's the name of the restaurant?"
    name = gets.chomp
    if restaurants[name.to_sym].nil?
      puts "On a scale from 1 to 10, how yummy food was there?"
      rating = gets.chomp
      restaurants[name.to_sym] = rating.to_i
    else
      puts "You already added that restaurant!"
    end
      
  when "display"
    puts "Do you want to display good, or bad restaurants? -> good -> bad"
    display_choice = gets.chomp
    if display_choice=="good"
      restaurants.each { |name, rating|
        puts name.to_s if rating > 5
      }
    else
      restaurants.each { |name, rating|
        puts name.to_s if rating <= 5
      }
    end
    
  when "update"
    puts "What restaurant would you like to update?"
    name = gets.chomp
    if restaurants[name.to_sym]nil?
      puts "That restaurant does not exist."
    else
      puts "What is the new rating?"
      rating = gets.chomp
      restaurants[name.to_sym] = rating.to_i
    end
  
  when "delete"
    "What restaurant would you like to delete?"
    name = gets.chomp
    if restaurants[title.to_sym].nil?
      puts "That restaurant does not exist."
    else
      puts movies.delete(title)
    end
  
  else
    puts "We're sorry, but something went wrong."
end 