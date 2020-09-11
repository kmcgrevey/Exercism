class Acronym
  def self.abbreviate(phrase)
    words = screen(phrase)
    (words.map { |word| word[0]}).join.upcase
  end

  def self.screen(phrase)
    screened = phrase.gsub('-', ' ')
    screened.split(' ')
  end
end