class Wordrotate
  def check(word1, word2)
    if word1 == word2
      true
    elsif word1.chars.sort != word2.chars.sort
      false
    else
      count = 0
      until word1 == word2 || count == word1.size
        word1 = word1.chars.rotate.join
        rotated_word = word1
        count += 1
      end
      rotated_word == word2
    end
  end
end