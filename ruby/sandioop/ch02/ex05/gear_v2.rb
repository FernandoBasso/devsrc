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
end
