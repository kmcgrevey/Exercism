class Crypto

  def initialize(plaintext)
    @plaintext = plaintext
  end

  def ciphertext
    return @plaintext if @plaintext == ''
    chunk = @plaintext.downcase.gsub(/[^a-z0-9]/, '')
    format(chunk)
  end

  def format(chunk)
    column_size = Math.sqrt(chunk.size).ceil
    # slice chunk into column size pieces
    rough_slices = (chunk.chars.each_slice(column_size).to_a)
    # find LAST slice.length and add spaces until == column_size
    slices = check_slice(rough_slices)
    # take/delete first char from each slice and put into new slices until empty
    mixed = []
    
    (slices.first.size).times do
      mixed << slices.map { |slice| slice.shift }
    end

    (mixed.map { |slice| slice.join }).join(' ')
  end

  def check_slice(slices)
    if slices.first.size == slices.last.size
      slices
    else
      (slices.first.size - slices.last.size).times do
        slices.last << ' '
      end
      slices
    end
  end

end
