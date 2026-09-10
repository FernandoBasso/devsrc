module TemplateHelpers
  ##
  # The title that goes into the <title /> tag of the generated HTML.
  #
  def title(data)
    raise StandardError.new('Provide at least :site_title for the template') if data[:site_title].nil?

    data.values_at(
      :doc_title,
      :subject,
      :site_title
    ).compact.join(' :: ')
  end
end
