import Widget, escape from require "lapis.html"

class ViewPasta extends Widget
  content: =>
    p "File #{@p_filename}"
    a href: @url_for('raw_pasta', token: @token), ->
      text 'raw'
    text ' / '
    a href: @url_for('download_pasta', token: @token), ->
      text 'download'
    pre ->
      raw escape @p_content