module TemplateHelpers
  def currency(amount)
    "$#{sprintf('%.2f', @balance)}"
  end

  def strong(text)
    "<strong>#{text}</strong>"
  end
end

