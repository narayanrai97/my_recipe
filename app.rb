#set :bind, "0.0.0.0"
def add
    info= {}
    print "Name: "
    info['name'] = gets.chomp
    print "Category: "
    info['category'] = gets.chomp
    print "Image: "
    info['image'] = gets.chomp
    print "Prep time: "
    info['prep_time'] = gets.chomp
    print "Cook time: "
    info['cook_time'] = gets.chomp
    print "Yields: "
    info['yields'] = gets.chomp
    print "Ingredients: "
    info['ingredients'] = gets.chomp
    print "Method: "
    info['method'] = gets.chomp

    recipe = Recipe.new(info)
    recipe.save
end

def search
    print "Please enter the recipe name: "
    name = gets.chomp
    recipes = Recipe.where("name LIKE ?", "%#{name}%")
    #puts recipes.inspect
    if recipes.length == 0
        puts "Recipe not found"
    else
        recipes.each do |recipe|
            puts "Name: #{recipe.name}"
            puts "Category: #{recipe.category}"
            puts "Image: #{recipe.image}"
            puts "Prep time: #{recipe.prep_time}"
            puts "Cook time: #{recipe.cook_time}"
            puts "Yields: #{recipe.yields}"
            puts "Ingredients: #{recipe.ingredients}"
            puts "Method: #{recipe.method}"
        end
    end
end
puts "Welcome To My Recipe"
puts "1) Add a recipe"
puts "2) Search recipes"
print "  >  "

option = gets.chomp
if option == "1"
    puts "  ADDING RECIPE"
    add
elsif option == "2"
    puts "  SEARCHING RECIPE"
    search
else
    puts "  Invalid entry. Please enter 1 or 2: "
end


