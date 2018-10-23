# # string method practice
# my_str = "hello, my name is Andy"
#
# puts my_str.upcase
# puts my_str.reverse
# puts my_str.include?('n')
# puts my_str.capitalize
# puts "This is #{my_str} used in string interpolation"


# Array practice
# fav_movies = ["Zoolander","Land Before Time","Venom","Apollo 13"]
# top_three_favs = []
#
# top_three_favs << fav_movies[1]
# top_three_favs << fav_movies[2]
# top_three_favs << fav_movies[3]
#
# p top_three_favs
# p fav_movies.length
# some_moves = fav_movies.slice(2,1)
# p some_moves
# p fav_movies
# p fav_movies.rotate(-1)

#Decisions practice
# Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.

# do loop = infinite loop
# i = 1
# loop do
#   puts i
#   i+=1
# end

#times loop
# i = 1
# 20.times do
#   puts i
#   i+=1
# end

#each & time loop
# i = 1
# arr = []
# 20.times do
#   arr << i
#   i+=1
# end
#
# arr.each do |el|
#   puts el
# end

#until loop
# x = 1
#   until x > 20
#     puts x
#     x+=1
#   end

# do while (do if)
# x = 1
# loop do
#   puts x
#   x+=1
#   break if x > 20
# end


# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# def under_ten_not_neg(num)
#   if num > 0 && num <= 10
#     puts "Valid"
#   else
#     puts "Invalid"
#   end
# end
# under_ten_not_neg(5)

# Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
# def fizz_buzz
#   x = 1
#   100.times do
#     if x % 3 == 0 && x % 5 == 0
#       puts "FizzBuzz"
#     elsif x % 3 == 0 && x % 5 > 0
#       puts "Fizz"
#     elsif x % 3 > 0 && x % 5 ==0
#       puts "Buzz"
#     else
#       puts x
#     end
#     x+=1
#   end
# end
#
# fizz_buzz

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# def sum_these_numbers(x,y)
#   puts x + y
# end
# sum_these_numbers(5,3)

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def is_even(num)
#   num.even?
# end
# p is_even(5)

# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
# sentence = ["this","is","my","sent","array"]
# #each example
# sentence.each do |el|
#   puts el.upcase
# end
# #block example
# sentence.each { |el| puts el.upcase}

# Write a method which calls another method, then uses its return value.

# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
# def valid_date
#   month = get_month
#     if month < 1 || month > 12
#       p false
#     else
#   day = get_day
#     if day < 1 || day > 31
#       p false
#     else
#   year = get_year
#     if month == 2 && day > 28
#       p false
#     elsif month == 4 && day > 30
#       p false
#     elsif month == 6 && day > 30
#       p false
#     elsif month == 9 && day > 30
#       p false
#     elsif month == 11 && day >30
#       p false
#     else
#       p "#{month} #{day}, #{year}"
#     end
#   end
# end
# end
#
# def get_month
#   puts "Enter a month"
#   num = gets.chomp
#   num.to_i
# end
#
# def get_day
#   puts "Enter a day"
#   num = gets.chomp
#   num.to_i
# end
#
# def get_year
#   puts "Enter a year"
#   num = gets.chomp
#   num.to_i
# end
#
# valid_date

# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).
# def rps_game
#   puts "Player 1, make a move!"
#   p1_move = gets.chomp
#   puts "Player 2, make a move!"
#   p2_move = gets.chomp
#
#   if p1_move == "rock" && p2_move == "scissors"
#     puts "Player 1 wins!"
#   elsif p1_move == "paper" && p2_move == "rock"
#     puts "Player 1 wins!"
#   elsif p1_move == "scissors" && p2_move == "paper"
#     puts "Player 1 wins!"
#   elsif p2_move == "rock" && p1_move == "scissors"
#     puts "Player 2 wins!"
#   elsif p2_move == "paper" && p1_move == "rock"
#     puts "Player 2 wins!"
#   else p2_move == "scissors" && p1_move == "paper"
#     puts "Player 2 wins!"
#   end
# end
#
# rps_game
