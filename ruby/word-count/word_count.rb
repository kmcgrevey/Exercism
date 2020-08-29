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
  # regexp split on one or more non-word characters --> \W+
  splitted = @phrase.downcase.split(/\W+/)
  splitted.reject { |item| item.empty? }
 end

end

=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

