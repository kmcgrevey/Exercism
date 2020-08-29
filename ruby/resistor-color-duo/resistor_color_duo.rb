class ResistorColorDuo

  def self.value(stripes)
    codes = stripes.map { |stripe| find_code(stripe) }
    codes.take(2).join.to_i 
  end

  def self.find_code(stripe)
    chart = { "black"=>0,
              "brown"=>1,
              "red"=>2,
              "orange"=>3,
              "yellow"=>4,
              "green"=>5,
              "blue"=>6,
              "violet"=>7,
              "grey"=>8,
              "white"=>9 }
    chart[stripe]
  end
end

=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

# The colors are mapped to the numbers from 0 to 9 in the sequence:
# Black - Brown - Red - Orange - Yellow - Green - Blue - Violet - Grey - White