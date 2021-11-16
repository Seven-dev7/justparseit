class CsvElement < ApplicationRecord
  belongs_to :csv_loader
  has_one_attached :csv_file
end
