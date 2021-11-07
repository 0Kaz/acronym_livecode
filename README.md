# Acronymize + TDD Livecode

## Acronymize in Ruby 

An acronym is an abbreviation formed from the initial letters of other words and pronounced as a word. 

Let's first create a method first + its pseudocode 

```ruby 
def acronymize(sentence)
  # 1. Split the sentence into words
  # 2. Initialize an empty array 
  # 3. Iterate over words, for each word, select the first letter (how?)
  # 4. Through iteration, store it in the empty Array
  # 5. Join elements of the array, uppercase it and return it
end
```

The solution would be : 
```ruby 
def acronymize(sentence)
  # 1. Split the sentence into words
  split_sentence = sentence.split(" ")
  # 2. Initialize an empty array 
  acronym_array = []
  # 3. Iterate over words, for each word, select the first letter (how?)
  # 4. Through iteration, store it in the empty Array
  split_sentence.each { |l| acronym_array << l[0] }
  # 5. Join elements of the array, uppercase it and return it
  return acronym_array.join("").upcase
end
```


## TDD ~ Test Driven Development

TDD is a software development process that help builds building testing cases our our application before it is fully developed or in production.

**The concept of TDD is simple :**

1. Add a test in your program
2. Run all tests. The first test should fail for expected reasons 
3. Write the simplest code that passes the first test
4. All tests should have a process transitioning from a failed test to a pass
5. Refactor as needed, using tests after each refactor to ensure that functionality is preserved
6. Repeat the process to avoid any issue. 


Let's build our first TDD in Ruby, first of all, you need to install a specific gem called ```rspec``` 

```console
gem install rspec
```

Create a folder called ```spec``` then name your test preferably that way ```program_name_spec.rb```: 

***spec/acronym_spec.rb**

```ruby
require 'acronym'

describe "Testing our acronimyze method" do 
    it "should return the acronym of the words" do 
        expect(acronymize("what the hell")).to eq("WTH")
    end
end
```

You already got familiar with ```require_relative``` or ```require``` in few previous challenges, we use this built-in Ruby method to load other ruby files and executes its statements.

There will be more indepth about ```require_relative``` or ```require``` in the upcoming lectures and challenges ! 

```ruby 
require 'acronym'
```

Remember this syntax, our test expresses some basic desired behaviour. 

we ```describe``` our testing method, and ```it``` should do a specific test for us to ```expect``` the result of our application ```to`` ``eq``ual a specific outcome.

```ruby
describe "Title of our testing method" do 
    it "should be a description of what we are expecting as a result" do 
        expect(method_name(parameter)).to eq(expected result)
    end
end
```

Since the fun is about refactoring our code to be more efficient and simple, let's try it another way: 

```ruby
def acronymize(sentence)
  # 1. Split the sentence into words
  # 2. Initialize an empty array 
  # 3. Iterate over words, for each word, select the first letter (how?)
  # 4. Through iteration, store it in the empty Array
  # 5. Join elements of the array, uppercase it and return it
  return  sentence.split(" ").map {|l| l[0]}.join("").upcase
end
```

Launch our rspec with our tests passing : 

```console
 rspec spec/acronym_spec.rb --color --format doc
```

```console
Testing our acronymize method
  should return the acronym of the words

Finished in 0.00356 seconds (files took 0.16331 seconds to load)
1 example, 0 failures

```