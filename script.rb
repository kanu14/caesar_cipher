# caesar cipher
# have text and a key to input information and shift
# split the text into individual items to iterate over
# convert the characters into ascii/numbers
# shift and account for rolling from z to a, capitalize as needed
# put the characters back into an array(?) and return result
# 
#

def caesar_cipher(text, key)
  new_text = Array.new
  old_text = text.chars
  
  # old_text.each_with_index { |num| puts old_text.ord}
  p old_text
  p old_text[0].ord
  p new_text
  old_text.each.map { |letters| puts letters.ord + key}
end

caesar_cipher("hello world", 5)