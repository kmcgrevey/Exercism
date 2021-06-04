class BeerSong

 def self.recite(beers, rounds)
  empties = beers - 1
  "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\n" \
    "Take one down and pass it around, #{empties} bottles of beer on the wall.\n"
  # binding.pry
 end


end

