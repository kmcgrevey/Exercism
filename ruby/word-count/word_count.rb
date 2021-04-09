class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = split_phrase
    words.reduce(Hash.new(0)) do |count, word|
      count[word] +=1
      count
    end
  end

  def split_phrase
    # remove single quotes first
    phrase = @phrase.gsub(/(?<!\w)'|'(?!\w)/, '')
    # regexp split but leaves apostrophy as only non-word
    splitted = phrase.downcase.split(/[^'\w]+/)
    splitted.reject { |item| item.empty? }
  end

end
