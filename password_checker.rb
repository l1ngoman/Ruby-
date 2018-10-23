# Password Checker Challenge
# Challenges
# You are writing the user registration page for a secure web site.
# On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:
#
# User ID and password cannot be the same
# User ID and password have to be at least six characters long
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ and space
# Password cannot contain "password" in a capitalization
# Proceed as follows:
#
# Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
def same?(user,pass)
  if user == pass
    true
  else
    false
  end
end
# # Tests:
# #
# p same?("joe", "joe") #-> true
# p same?("joe", "joe1") #-> false
# Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise.
def not_long_enough?(string)
  if string.length >= 6
    false
  else
    true
  end
end
# # Tests:
# #
# p long_enough?("12345") #-> false
# p long_enough?("123456") #-> true
# Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String.
def does_not_contain_special?(string)
  if string.include?("!") || string.include?("#") || string.include?("$")
    false
  else
    true
  end
end
# # Tests:
# #
# p does_not_contain_special?("Hello Friend") #-> true
# p does_not_contain_special?("A#C") # -> false
# p does_not_contain_special?("A!C") # -> false
# p does_not_contain_special?("A$C") # -> false
# Challenge Write a method called contains_special which checks to see if !, #, $ is contained in a given String.
# Tests:
def contains_special?(string)
  if string.include?("!") || string.include?("#") || string.include?("$")
    true
  else
    false
  end
end
# contains_special("Hello Friend") -> false
# contains_special("A#C") -> true
# contains_special("A!C") -> true
# contains_special("A$C") -> true
# Challenge Write a method that inputs user ID and password from the user, and then tells the user if the they are acceptable.
def get_valid_creds
  puts "Enter a username"
  user = gets.chomp
  puts "Enter a password"
  pass = gets.chomp

  if same?(user,pass)
    p "Invalid - User and password are the same length"
  elsif not_long_enough?(user) || not_long_enough?(pass)
    p "Invalid - Username or password is not long enough. Both must be at least 6 characters long."
  elsif contains_special?(user) || does_not_contain_special?(pass)
    p "Invalid - Username cannot contain a #,!, or $. Password must contain a #,!, or $."
  else
    p "Valid username and password!"
  end
end

get_valid_creds
# Write a main method called validate_password that:
#
# First lets a user input both user ID and password,
# Then use the methods above to evaluate if the user ID and password combination is acceptable or not
# Tells user what the result is.
# Stretch Goal
# Password has to contain at least one digit Task: Write a function using basic functions on String to see if a given String contains contains one of "0","1", "2", "9". Tests:
# has_digit("abc") -> false
# has_digit("a1c") -> true
# Super Stretch Goal
# Password has to contain a lower and an uppercase letter. Tests:
# has_upper_and_lowercase("abc") -> false
# has_upper_and_lowercase("aBc") -> true
# has_upper_and_lowercase("123") -> false
