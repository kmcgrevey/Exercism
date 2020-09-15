class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError if seq1.length != seq2.length
    seq1.chars.zip(seq2.chars).count { |a, b| a != b }
  end
  # def self.compute(seq1, seq2)
  #   counter = seq1.length
  #   raise ArgumentError if counter != seq2.length
  #   distance = 0
  #   until counter == 0
  #     distance += 1 if seq1[(counter - 1)] != seq2[(counter - 1)]
  #     counter -= 1
  #   end
  #   distance
  # end
end