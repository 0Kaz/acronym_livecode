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

p acronymize('What the fuck!')