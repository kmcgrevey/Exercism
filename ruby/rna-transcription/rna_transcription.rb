class Complement
  @dna_comp = {'G' => 'C',
               'C' => 'G',
               'T' => 'A',
               'A' => 'U'}
  
  def self.of_dna(nucl)
      (nucl.chars.map { |char| @dna_comp[char] }).join
  end
end
