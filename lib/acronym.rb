def acronymize(sentence)
  # 1. Split the sentence into words
  # 2. Initialize an empty array 
  # 3. Iterate over words, for each word, select the first letter (how?)
  # 4. Through iteration, store it in the empty Array
  # 5. Join elements of the array, uppercase it and return it
  return  sentence.split(" ").map {|l| l[0]}.join("").upcase
end

