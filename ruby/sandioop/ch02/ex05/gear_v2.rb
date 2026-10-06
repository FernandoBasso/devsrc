class Gear
  attr_reader :wheels

  ##
  ##
  # A two-dimensional where [0] is the rim diameter a [1] is
  # the tire diameter. Both in millimeters.
  #
  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect do |wheel|
      ##
      # Now we can send .rim and .tire messages.
      #
      wheel.rim + wheel.tire * 2
    end
  end

  Wheel = Struct.new(:rim, :tire)

  ##
  # The the array of rim & tire and return an array
  # of structs where each struct can receive .rim and
  # .tire messages.
  #
  def wheelify(data)
    data.collect do |tup|
      Wheel.new(tup[0], tup[1])
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  p Gear.new(
    [
      [622, 20],
      [622, 23],
      [559, 30],
      [559, 40]
    ]
  ).diameters
  #=> [662, 668, 619, 639]
end
