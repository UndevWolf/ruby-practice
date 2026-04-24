def substrings(string,dictionary)
  dictionary.reduce(Hash.new(0)) {
    |hash,current|
    string.downcase.split(/[^[[:word:]]]+/).each {
      |word| 
      hash[current] += 1 if word.include?(current)
    }
    hash
  }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, it sit down! How's it going?",dictionary)
 
