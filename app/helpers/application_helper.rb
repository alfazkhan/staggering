require 'redcarpet'
require 'redcarpet/render_strip'
module ApplicationHelper
    def markdown(text)
        markdown = raw Markdown.new(text).to_html
    end

    def down(text)

        len=text.length
        string=""
        if len < 200
            markdown(text)
        else
            for i in 0...200
             string+=text[i]
            end
            string+="..."
            return markdown(string)
        end

    end
end
