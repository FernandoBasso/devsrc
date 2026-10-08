class Gear
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  ##
  # Returns the ratio of the chainring and the pedal.
  #
  # A smaller chainring and a larger the cog gives us a lower
  # ratio, which is easier the pedal, while a larger chainring
  # with a smaller cog produces a higher ratio, which is harder
  # to pedal.
  #
  def ratio
    chainring / cog.to_f
  end
end

if __FILE__ == $PROGRAM_NAME
  ##
  # Each time the feet push the pedal around one time (causing the chainring
  # to complete one full cycle) makes the cog (and therefore the wheel) travel
  # around about 4.7 times.
  #
  # This is a high ratio, which is harder to pedal.
  #
  p Gear.new(52, 11).ratio
  #=> 4.7272727272727275

  # Each time the feet push the pedal around one time (causing the chainring
  # to complete one full cycle) makes the cog (and therefore the wheel) travel
  # around about 1.1 times.
  #
  # This is a lower ratio, which is easier to pedal.
  #
  p Gear.new(30, 27).ratio
  #=> 1.1111111111111112
end
