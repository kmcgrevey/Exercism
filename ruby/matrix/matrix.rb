class Matrix
  def initialize(trix)
    @trix = trix
  end
  
  def rows
    trix_rows = @trix.split("\n")
    trix_rows.map do |row|
      (row.split(" ")).map { |num| num.to_i }
    end
  end

  def columns
    # trix_columns = []
    # new_rows = rows
    # (new_rows.first.length).times do
    #   trix_columns << new_rows.map { |row| row.shift }
    # end
    # trix_columns
    rows.transpose
  end
end