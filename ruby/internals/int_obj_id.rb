class Integer
  ##
  # For any fixnum:
  #
  #   n.object_id >> 1 == n
  #
  # (at least in C ruby).
  #
  def fixnum?
    object_id.odd?
  end

  ##
  # https://github.com/ruby/fiddle
  #
  # def fixnum?
  #   Fiddle.dlwrap(self).odd?
  # end
end

p 1.fixnum?

# Both are just noting something relative to the memory address.

