class Gear
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

if __FILE__ == $PROGRAM_NAME
  p Gear.new(52, 11).ratio
  p Gear.new(30, 27).ratio
end
