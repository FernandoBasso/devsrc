require 'erb'
require_relative 'template_helpers'

class RenderContext
  include TemplateHelpers

  ##
  # data is as has with all data that can go into to fill the template.
  #
  def initialize(data)
    @data = data
  end

  def get_binding
    binding
  end
end
