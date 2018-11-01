require 'open-uri'
require 'json'

Ingredient.delete_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

file = open(url).read

data = JSON.parse(file)

# p data_hash.first[1].class

# ingredients = []

data.first[1].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

# p ingredient

