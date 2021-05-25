class ETL

  def self.transform(old)
    new_format = {}
    old.each do |value, letters|
      letters.each { |letter| new_format[letter.downcase] = value }
    end
    new_format
  end

end
