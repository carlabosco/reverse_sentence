# A method to reverse the words in a sentence, in place.
# Time complexity: linear, as string is reversed in place
# Space complexity: constant, as variables are updated without need for extra space
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length == 0

  temp = 0
  left = 0
  right = my_sentence.length - 1

  while left < right
    temp = my_sentence[right] 
    my_sentence[right] = my_sentence[left]
    my_sentence[left] = temp
    left += 1
    right -= 1
  end

  word_start = 0
  word_end = 0
  i = 0
  
  while i < my_sentence.length
    while i < my_sentence.length && my_sentence[i] == " "
      i += 1
    end

    word_start = i
    
    while i < my_sentence.length && my_sentence[i] != " "
      i += 1
    end

    word_end = i - 1

    while word_end > word_start
      temp = my_sentence[word_start]
      my_sentence[word_start] = my_sentence[word_end]
      my_sentence[word_end] = temp
      word_start += 1
      word_end -= 1
    end
  end  
  return my_sentence
end
