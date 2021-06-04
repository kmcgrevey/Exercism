class BeerSong

  def self.recite(beers, rounds)
    song = ''
    rounds.times do |round|
      if beers == 2 
        song += two_bottle_verse
      elsif beers == 1
        song += one_bottle_verse
      elsif beers == 0
        song += zero_bottle_verse
      else
        song += standard_verse(beers)
      end
      
      beers -= 1
      song += "\n" if round < rounds - 1
    end

    song
  end

  def self.standard_verse(beers)
    "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\n" \
      "Take one down and pass it around, #{beers - 1} bottles of beer on the wall.\n"
  end

  def self.two_bottle_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def self.one_bottle_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
  
  def self.zero_bottle_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

end
