class Gear
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect { |wheel| diameter(wheel) }
  end

  def diameter(wheel)
    wheel.rim + wheel.tire * 2
  end

  Wheel = Struct.new(:rim, :tire)

  def wheelify(tuples)
    tuples.collect do |tuple|
      Wheel.new(tuple[0], tuple[1])
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
