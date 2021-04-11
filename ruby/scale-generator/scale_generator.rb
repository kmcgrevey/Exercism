class Scale
  attr_reader :name

    def initialize(root, type)
      @name = "#{root.upcase} #{type.to_s}"
    end

end
