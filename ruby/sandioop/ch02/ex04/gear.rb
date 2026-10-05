class Gear
  private
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

class Blinkered
  def cog(gear)
    gear.cog
  end
end

if __FILE__ == $PROGRAM_NAME
  p Blinkered.new.cog(Gear.new(54, 11))
  #~ NoMethodError because of attempting to call a private method.
end

