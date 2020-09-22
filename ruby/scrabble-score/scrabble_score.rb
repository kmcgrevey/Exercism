class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word == nil
    ratings = { 'a' => 1,
                'e' => 1 }
    total_score = @word.chars.map do |letter|
      ratings[letter] if ('a'..'z').include? letter
    end
    total_score.sum
  end

end