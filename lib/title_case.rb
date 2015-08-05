class String

  define_method(:title_case) do
    designated_words = ["a", "an", "the", "for", "and", "nor", "but", "or", "so", "at", "around", "by", "after", "along", "from", "of", "on", "to", "under"]

    self.downcase()
    split_sentence = self.split
    split_sentence.each_with_index do |word, index|
      if designated_words.include?(word) && index != 0
        self
      elsif word == /\d+/
        self
      else
        word.capitalize!()
      end
    end
    split_sentence.join(" ")
  end
end
