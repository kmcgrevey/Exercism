class Scale
  attr_reader :name
  
  CHROM_SHARPS = %w(A A# B C C# D D# E F F# G G#)
  CHROM_FLATS = %w(A Bb B C Db D Eb E F Gb G Ab)
  SHARPS = %w(C G D A E B F# e b f# c# g# d# a)
  FLATS = %w(F Bb Eb Ab Db Gb d g c f bb eb)
  STEPS = {m: 1, M: 2, A: 3}

  def initialize(root, mode, steps = "mmmmmmmmmmmm")
    @root = root
    @mode = mode
    @steps = steps[0..-2].split("")
    @name = "#{root.upcase} #{mode.to_s}"
  end

  def pitches
    scale = SHARPS.include?(@root) ? CHROM_SHARPS : CHROM_FLATS
    build_scale(shift_root(scale))
  end

  def shift_root(scale)
    @root.size == 1 ? (root = @root.upcase) : (root = @root[0].upcase + @root[1])
    scale.rotate(scale.index(root))
  end

  def build_scale(scale)
    index = 0
    notes = [scale[index]]
    steps = @steps.map { |step| STEPS[step.to_sym] }
   
    steps.each do |step|
      index += step
      notes << scale[index]
    end

    notes
  end

end
