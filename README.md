# Playground

## Challenges and how to run

Write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column)
```ruby
  ruby smallest_temperature_spread.rb
```

Write a program to print the name of the team with the smallest difference in ‘for’ and ‘against’ goals.
```ruby
  ruby smallest_difference_in_for_and_against.rb
```

### Notes:

- When I did the first version I realized that the solutions were pretty much the same, so I decided to try something `DRY` (Don't repeat yourself).

- So I've tried to use `blocks` and `lambda` functions to build a file read abstraction (`lib/file_reader.rb`) and retrieve the file columns pre-processed.

- I was thinking about building another abstraction to calculate the difference and pick the smallest difference from both files, where I can point each position for the calculation and point to what field should be the return response, but I don't know if it's the goal of this challenge and it may bring some confusion or over-engineer.

### With more time:
- I would like to add rspec here to add some specs.
