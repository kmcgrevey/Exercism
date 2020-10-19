class Tournament

  def self.tally(input)
    matches = input.split("\n").map { |item| item.split(';') }
    
    if matches.count != 0
      teams = list_teams(matches)
      # binding.pry

    end
    "Team                           | MP |  W |  D |  L |  P\n"
  end

  def self.list_teams(matches)
    teams = []
    matches.each do |match|
      teams << match[0]
      teams << match[1]
    end
    team_stats = []
    teams.uniq.each do |team|
      stats = {}
      stats["name"] = team
      stats["MP"] = 1
      stats["W"] = 0
      stats["D"] = 0
      stats["L"] = 0
      stats["P"] = 0
      team_stats << stats
    end
    team_stats
  end
end

#name.ljust(10) # --> will format line to 10 spaces