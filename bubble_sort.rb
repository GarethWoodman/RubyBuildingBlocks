def bubble_sort(numbers)
  (numbers.length).times do
    (numbers.length-1).times do |i|
      numbers[i], numbers[i+1] = numbers[i+1], numbers[i] if numbers[i] > numbers[i+1]
    end
  end
  numbers
end

def bubble_sort_by(words)
  (words.length).times do
	  (words.length-1).times do |i|
	    words[i], words[i+1] = words[i+1], words[i] if (yield words[i], words[i+1]) > 0
	  end
  end
  words
end