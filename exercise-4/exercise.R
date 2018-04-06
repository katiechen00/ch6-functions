# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  diff <- abs(nchar(string1) - nchar(string2))
  min <- min(nchar(string1), nchar(string2))
  return (diff >= min)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
test1 <- is_twice_as_long("letter", "war")
test2 <- is_twice_as_long("human", "word")
test3 <- is_twice_as_long("fox", "gorgeous")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  diff <- abs(nchar(string1) - nchar(string2))
  if (nchar(string1) > nchar(string2)) {
    result <- paste("Your first string is longer by", diff, "characters", collapse = " ")
  } else if (nchar(string1) < nchar(string2)) {
    result <- paste("Your second string is longer by", diff, "characters", collapse = " ")
  } else {
    result <- "Your strings are the same length!"
  }
  return(result)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
result1 <- describe_difference("letter", "walk")
result2 <- describe_difference("sushi", "gorgeous")
result3 <- describe_difference("phone", "shows")
