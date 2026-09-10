require 'erb'
require_relative 'template_helpers'

class RenderContext
  include TemplateHelpers

  def initialize(user_name, balance)
    @user_name = user_name
    @balance = balance
  end

  ##
  # Exposes the internal evaluation context.
  #
  def get_binding
    binding
  end
end
