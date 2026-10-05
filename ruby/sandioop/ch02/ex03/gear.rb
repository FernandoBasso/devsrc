class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  ##
  # Assume rim and tier sizes are given in inches.
  #
  def gear_inches
    ##
    # The tire goes around the rim twice for diameter.
    #
    ratio * (rim + (tire * 2))
  end
end

if __FILE__ == $PROGRAM_NAME
  ##
  # We now broke the initialization with two params.
  #
  # p Gear.new(52, 11).ratio
  # p Gear.new(30, 27).ratio

  p Gear.new(52, 11, 26, 1.5).gear_inches
  #=> 137.0909090909091

  p Gear.new(52, 11, 24, 1.25).gear_inches
  #=> 125.27272727272728
end
