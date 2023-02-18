library(readxl)
library(devtools)

setwd("~/Google Drive/Book Club")
book_club <- read_excel("Book Club.xlsx", 4)

people <- unique(book_club$`... made by`)
chosen_person <- sample(people, 1)

book_opts <- subset(book_club, `... made by`==chosen_person)
book_choice <- book_opts[sample(nrow(book_opts), 1), ]

View(book_choice)