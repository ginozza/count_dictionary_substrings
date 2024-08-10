def count_dictionary_substrings(args, dictionary)
  array_args = args.downcase.split(" ") # Split each word separated by the " " character
  hash_found_strings = {} # Create an empty hash for the iteration

  dictionary.each do |definition| # Iterate over each term in the dictionary (definition)
    array_args.each do |word| # Iterate over each word in the arguments array
      if word.include?(definition) # Check if the word includes the definition (word contains definition?)
        if hash_found_strings.has_key?(definition) # Check if the hash already has the key
          hash_found_strings[definition] += 1 # If so, increment by 1
        else
          hash_found_strings[definition] = 1 # If not, add to the hash with a value of 1
        end
      end
    end
  end
  hash_found_strings # Return the hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p count_dictionary_substrings("Howdy partner, sit down! How's it going?", dictionary)
