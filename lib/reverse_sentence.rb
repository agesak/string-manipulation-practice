# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  # \s -  Any whitespace character (space, tab, newline)
  new_sentence = my_sentence.split(/(\s)/)                    # Time: O(n) Space: O(n)
  length = new_sentence.length                                # Time: O(1) Space: O(1)
  i = 0                                                       # Time: O(1) Space: O(1)
  while i < length-1                                          # Time: O(n)
    temp = new_sentence[i]                                    # Space: O(1)
    new_sentence[i] = new_sentence[length-1]
    new_sentence[length-1] = temp
    i += 1
    length -= 1
  end
  return my_sentence.replace(new_sentence.join(""))
end