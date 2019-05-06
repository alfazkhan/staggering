class Review < ApplicationRecord
  has_attached_file :image, styles: { basic: "300x300#"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
