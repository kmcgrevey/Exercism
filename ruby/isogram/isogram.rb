class Isogram
    def self.isogram?(input)
      word = input.downcase.chars
      word = word.reject { |letter| letter unless ('a'..'z').include? letter }
      word == word.uniq
    end
end