class Pangram
  ALPHABET = ('a'..'z').to_a
  
  def self.pangram?(sentence)
    ALPHABET == sentence.downcase
                        .gsub(/[^a-z\-]/,'')
                        .chars
                        .uniq
                        .sort
  end
end