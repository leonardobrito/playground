# Playground

## Challenges and how to run

Write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column)
```ruby
  ruby lib/smallest_temperature_spread.rb
```

Write a program to print the name of the team with the smallest difference in ‘for’ and ‘against’ goals.
```ruby
  ruby lib/smallest_difference_in_for_and_against.rb
```

## Run specs

Turn the `bin/setup` file executable doing the command below:
```sh
chmod +x bin/setup
```

Now install the dependencies:
```sh
./bin/setup
```

And finally, run the specs:
```sh
rspec
```

### Notes:

- When I did the first version I realized that the solutions were pretty much the same, so I decided to try something `DRY` (Don't repeat yourself).

- So I've tried to use `blocks` and `lambda` functions to build a file read abstraction (`lib/support/file_reader.rb`) and retrieve the file columns pre-processed.

### With more time:
- I would like to write better specs.
