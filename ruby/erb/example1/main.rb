require 'erb'
require_relative 'render_context'

context = RenderContext.new("Aayla", 1337.9)
template = File.read('./article.html.erb')
erb_html = ERB.new(template)
output = erb_html.result(context.get_binding)

puts output
