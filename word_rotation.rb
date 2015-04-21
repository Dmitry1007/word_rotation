require 'pry'
class Wordrotate

  def check(word1, word2)
    # binding.pry
    if word1 == word2
      true
    elsif word1.chars.sort != word2.chars.sort
      false
    else
      until word1 == word2
        word1 = word1.chars.rotate.join
        rotated_word = word1
      end
      rotated_word == word2
    end
  end

end
