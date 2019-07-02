def caesar_cipher(word, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split("")
  encryptedWord = ""
  for letter in word.split("")
    unless alphabet.include?(letter)
      encryptedWord << letter
      next
    end
    26.times do |i|
      if letter == alphabet[i]
        encryptedWord << alphabet[(i+shift)-26]
        break
      elsif letter == alphabet[i].upcase()
        encryptedWord << alphabet[(i+shift)-26].upcase()
        break
      elsif letter == " "
        encryptedWord << " "
        break
      end                                                       
    end
  end
  encryptedWord
end