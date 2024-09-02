# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(ohwhaley)

# test the input is in correct format
what <- c("This is a character string")
say(what)
expect_type(what, "character")
expect_gt(length(what), 0)

# test the output is of correct format
expect_length(say(), 0) #Returns something with a length of 0
expect_null(say()) #Returns null
expect_invisible(say()) #Returns invisibly
expect_message(say()) #Returns a message
