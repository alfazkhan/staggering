class Project < ApplicationRecord

  validates :title,
            :presence => true,
            :length => {minimum: 5,maximum: 50}
  validates :location,
            :presence => true,
            :length => {minimum: 5,maximum: 50}
  validates :client,
            :presence => true,
            :length => {minimum: 5,maximum: 50}
  validates :rating,
            :presence => true

end
