class Image < ApplicationRecord

    has_attached_file :image, styles: {slide: "1280x720#"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
