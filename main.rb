require 'csv'

path = 'c:/temp/results.csv'
options = {
  converters: :numeric,
  col_sep: ';'
}
arr_of_arrs = {}
CSV.read(path, options)[1..-1].reverse.each { |x| arr_of_arrs[x[0]] = x[2..-1] }; nil

arr_of_arrs[0]
last_game_number = arr_of_arrs.first.first

puts 'Input numbers:'
input = gets.chomp.split.map(&:to_i)
puts "Numbers: #{input}, length: #{input.length} "
arr_of_arrs.each { |game_number, numbers| 
  if (numbers - input).length == numbers.length - input.length }
    puts last_game_number - game_number 
  end
}

