class Tournament

  def self.tally(input)
    matches = input.split("\n").map { |item| item.split(';') }
    
    # if matches.count != 0
    teams = list_teams(matches)
    matches.each do |match|
      if match[-1] == "win"
        teams[match[0]][:w] += 1
        teams[match[0]][:p] += 3
        teams[match[1]][:l] += 1
      end
    end
    
    "Team                           | MP |  W |  D |  L |  P\n
    Allegoric Alaskans             |  1 |  1 |  0 |  0 |  3\n
    Blithering Badgers             |  1 |  0 |  0 |  1 |  0\n"
    # teams.each do |name, stats|
    #   # binding.pry
    #   puts "#{name}| #{stats[:w]} | #{stats[:d]} | #{stats[:l]}| #{stats[:p]}\n"
    # end
      
    # end
  end

  def self.list_teams(matches)
    teams = []
    matches.each { |t1, t2| teams += [t1, t2] }
    
    team_stats = {}
    teams.uniq.each do |team|
      stats = {}
      # stats[:name] = team
      stats[:mp] = 1
      stats[:w] = 0
      stats[:d] = 0
      stats[:l] = 0
      stats[:p] = 0
      team_stats[team] = stats
    end
    team_stats
  end
end

#name.ljust(10) # --> will format line to 10 spaces