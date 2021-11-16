FactoryBot.define do
  factory :csv_element do
    csv_loader { nil }
    after(:build) do |csv_element|
      csv_element.csv_file.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'csv_files', 'csv_test.csv')), filename: 'csv_test.csv', content_type: 'csv')
    end
  end
end
