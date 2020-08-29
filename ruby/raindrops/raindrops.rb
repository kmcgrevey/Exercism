class Raindrops

  def self.convert(number)
    sounds = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    sound = sounds.map {|divisor, effect| effect if number % divisor == 0}.join
    sound.empty? ? number.to_s : sound
    # if sound.empty? then number.to_s else sound end
  end

end