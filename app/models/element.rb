class Element < ApplicationRecord
  belongs_to :loader
  has_one_attached :file
end
