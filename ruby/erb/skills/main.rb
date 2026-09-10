require_relative 'render_context'

##
# RenderContext includes TemplateHelpers, then inside the .html.erb
# files, the methods for TemplateHelpers can be used.
#
context = RenderContext.new({
  site_title: 'Site Title',
  doc_title: 'Doc Title',
})
template = File.read('./article.html.erb')
erb_html = ERB.new(template)
output = erb_html.result(context.get_binding)

puts output
