class Scale
  attr_reader :name
  CHROM_SHARPS = %w(A A# B C C# D D# E F F# G G#)
  CHROM_FLATS = %w(A Bb B C Db D Eb E F Gb G Ab)
  SHARPS = %w(C G D A E B F# e b f# c# g# d# a)
  FLATS = %w(F Bb Eb Ab Db Gb d g c f bb eb)

  def initialize(root, mode)
    @root = root
    @mode = mode
    @name = "#{root.upcase} #{mode.to_s}"
  end

  def pitches
    scale = SHARPS.include?(@root) ? CHROM_SHARPS : CHROM_FLATS
    shift_root(scale)

  end

  def shift_root(scale)
    scale.rotate(scale.index(@root))
  end

end
