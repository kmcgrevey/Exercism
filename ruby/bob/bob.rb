class Bob

  def self.hey(remark)
    # remark = remark.gsub!(/[^A-Za-z!?]/, '')
    # binding.pry
    # if remark.include?("!")
    #   remark.upcase == remark
    #   return 'Whoa, chill out!'
    # if remark.end_with? "!" || remark.end_with? "?"
    # return 'Whatever.' if remark.include?("?") == false && remark.include?("!") == false
    return 'Whoa, chill out!' if remark.include?("!") && remark.upcase == remark
    return 'Whoa, chill out!' if remark.include?("?") == false && remark.upcase == remark
    return 'Sure.' if remark.include?("?") && remark.upcase != remark
    return "Calm down, I know what I'm doing!" if remark.include?("?") && remark.upcase == remark
    # end
    'Whatever.'
  end

end
