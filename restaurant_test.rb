require_relative 'restaurant'

yoshi = Restaurant.new('yoshinoya', 'meguro', 12, 'beef bowl', 'Eddo')

# p yoshi

chez_eddo = yoshi.chef

# p chez_eddo.restaurant

"#{yoshi.name} is in #{yoshi.city}"

"#{yoshi.name} can hold #{yoshi.capacity} people"

"Under construction...."

yoshi.capacity = 35

# change the capacity

"#{yoshi.name} can hold #{yoshi.capacity} people"

"Right now, #{yoshi.name} is #{yoshi.open_status}"

yoshi.reserve('TK')
yoshi.reserve('Gerard')

# p yoshi

# yoshi.reservations = "Bogdan"

# yoshi.print_reservations

# p Restaurant.categories






