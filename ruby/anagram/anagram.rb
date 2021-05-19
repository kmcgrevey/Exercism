class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates = candidates.find_all do |candidate| 
                   (candidate.size == @word.size) && (candidate.downcase != @word)
                 end
    candidates.find_all { |candidate| candidate.downcase.chars.sort == @word.chars.sort }
  end

end
