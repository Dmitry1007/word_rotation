class Wordrotate
  def check(word, compare_word)
    (word + word).include?(compare_word) && compare_word.length == word.length
  end
end
