##
# This is a bad way to do it. Having to know the indices is not
# a good idea.
##

class Gear
  attr_reader :data

  ##
  # A two-dimensional where [0] is the rim diameter a [1] is
  # the tire diameter. Both in millimeters.
  #
  def initialize(data)
    @data = data
  end

  def diameters
    data.collect do |tup|
      p tup
      ##
      # Have to know which index means what. [0] is the rim diameter,
      # [1] is the tire diameter.
      #
      tup[0] + tup[1] * 2
    end
  end

  #
  # Several other methods that index into the array.
  #
  # The data method merely returns the array. To do anything useful, each
  # sender of data must have complete knowledge of what piece of data is at
  # which index in the array.
  #
  # The knowledge that rims ar at [0] and tires at [1] should not be
  # duplicated. It should be DRY.
  #
  # BAD!
  #
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
