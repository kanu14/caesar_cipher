# caesar cipher
# have text and a key to input information and shift
# split the text into individual items to iterate over
# convert the characters into ascii/numbers
# shift and account for rolling from z to a, capitalize as needed
# put the characters back into an array(?) and return result
# 
# if ascii is over 122, make it return to 97

print "Enter text for cipher: "
encode = gets.chomp

print "Enter cipher key: "
shifted = gets.chomp.to_i

def caesar_cipher(text, key)

  old_text = text.downcase.chars
  
  # old_text.each_with_index { |num| puts old_text.ord}
  # p old_text
  # p old_text[0].ord
  
  # next line creates an array with the adjusted numbers
  # new_array = old_text.map { |letters| p  letters.ord + key }
  new_array = old_text.map do |letters| 
    # if (letters.ord == 32)
    #     p letters.chr
    if letters.ord < 97 || letters.ord > 122
        p letters.chr
    elsif (letters.ord + key > 122)
        p (letters.ord + key - 122 + 96).chr
    else (letters.ord + key).chr
    end
  end
  p new_array
  
end

caesar_cipher(encode, shifted)