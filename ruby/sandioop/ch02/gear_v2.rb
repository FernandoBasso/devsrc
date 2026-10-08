class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  ##
  # Returns the ratio of the chainring and the pedal.
  #
  # A smaller chainring and a larger the cog gives us a lower ratio, which is
  # easier the pedal, while a larger chainring with a smaller cog produces a
  # higher ratio, which is harder to pedal.
  #
  def ratio
    chainring.fdiv(cog)
  end

  ##
  # Tire goes around rim twice for diameter.
  #
  # NOTE: rim + tire * 2 is the wheel diameter, so this method is actually
  # computing two things and not following the single responsibility principle
  # for now with this method.
  #
  def gear_inches
    ratio * (rim + tire * 2)
  end
end

if __FILE__ == $PROGRAM_NAME
  p Gear.new(52, 11, 26, 1.5).gear_inches
  #=> 137.0909090909091

  p Gear.new(30, 27, 24, 1.25).gear_inches
  #=> 29.444444444444446
end
