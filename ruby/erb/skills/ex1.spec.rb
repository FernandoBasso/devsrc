require 'erb'
require_relative 'render_context'

describe 'erb test' do
  base_data = {
    site_title: 'Dev'
  }

  it 'raises when there is not even a default site title' do
    context = RenderContext.new({})
    template = '<title><%= title(@data) %></title>'
    renderer = ERB.new(template)
    expect {
      renderer.result(context.get_binding)
    }.to raise_error(StandardError, 'Provide at least :site_title for the template')
  end

  it 'renders the bare site title' do
    context = RenderContext.new(base_data)
    template = "<title><%= title(@data) %></title>"
    renderer = ERB.new(template)
    output = renderer.result(context.get_binding)

    expect(output).to eq('<title>Dev</title>')
  end

  it 'renders the doc title and site title' do
    data = { **base_data, doc_title: 'Doc' }
    context = RenderContext.new(data)
    template = "<title><%= title(@data) %></title>"
    renderer = ERB.new(template)
    output = renderer.result(context.get_binding)

    expect(output).to eq('<title>Doc :: Dev</title>')
  end

  it 'renders doc title, subject, and site title' do
    data = { **base_data, doc_title: 'Doc', subject: "Subject" }
    context = RenderContext.new(data)
    template = "<title><%= title(@data) %></title>"
    renderer = ERB.new(template)
    output = renderer.result(context.get_binding)

    expect(output).to eq('<title>Doc :: Subject :: Dev</title>')
  end
end
