class Complement
  def self.of_dna(nucl)
      nucl.tr('GCTA', 'CGAU')
  end
end
