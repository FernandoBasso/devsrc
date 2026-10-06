module Thing
  def hello
    "Hello!"
  end
end

class Thing::Foo
  def pub
    priv
  end

  private

  def priv
    "It works!"
  end
end

f = Thing::Foo.new

p f.pub
