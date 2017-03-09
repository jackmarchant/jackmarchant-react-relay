class MarkdownService
  class HTMLWithRouge < Redcarpet::Render::HTML

  end

  def initialize
    @markdown = Redcarpet::Markdown.new(HTMLWithRouge, :fenced_code_blocks => true)
  end

  def render(text)
    @markdown.render(text)
  end
end