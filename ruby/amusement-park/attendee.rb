class Attendee
  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @id
  end

  def issue_pass!(pass_id)
    @id = pass_id
  end

  def revoke_pass!
    @id = nil
  end
end
