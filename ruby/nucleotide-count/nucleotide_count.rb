class Nucleotide
  DNA_COUNT = {
    'A' => 0,
    'C' => 0,
    'T' => 0,
    'G' => 0
  }

  def self.from_dna(seq)
    # raise ArgumentError unless seq.delete('ACTG').size == 0
    raise ArgumentError unless seq =~ /\A[GCTA]*\z/
    DNA_COUNT.keys.map { |key| DNA_COUNT[key] = seq.count(key) }
    self
  end

  def self.count(nt)
    DNA_COUNT[nt]
  end

  def self.histogram
    DNA_COUNT
  end

end
