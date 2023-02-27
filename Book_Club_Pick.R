library(readxl)
library(devtools)

setwd("~/Google Drive/Book Club")
# Read in the sheet of the book club file that corresponds to the month with the eligible people & their book choices. 4 is thus totally arbitrary and merely corresponds to the month under consideration.
book_club <- read_excel("Book Club.xlsx", 4)

# create a vector of the list of people who have made book suggestions. if anyone has made any typos in their name, it will screw up here because it will count each misspelling separately.
people <- unique(book_club$`... made by`)
# choose somebody from the group of eligible people
chosen_person <- sample(people, 1)

# subset to all the books offered by the chosen person
book_opts <- subset(book_club, `... made by`==chosen_person)
# choose a book from this option. another method here shown just for kicks
book_choice <- book_opts[sample(nrow(book_opts), 1), ]

View(book_choice)
