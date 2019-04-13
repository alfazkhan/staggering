require 'redcarpet'
require 'redcarpet/render_strip'
module ApplicationHelper
    def markdown(text)
        markdown = raw Markdown.new(text).to_html

        
    end
end
