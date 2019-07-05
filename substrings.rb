def substrings(words, dictionary)
  words = words.downcase().split(" ")
  matchedWords = {}

  for dict in dictionary
	for word in words
	  word.length.times do |i|
		word.length.times do |j|
		  if word[i..j] == dict
			matchedWords.key?(word[i..j]) ? matchedWords[word[i..j]] += 1 : matchedWords[word[i..j]] = 1
		  end
		end
	  end
    end
  end
  
  matchedWords
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)