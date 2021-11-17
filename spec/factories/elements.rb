FactoryBot.define do
  factory :element do
    loader { nil }
    after(:build) do |element|
      element.file.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'csv_files', 'csv_test.csv')), filename: 'csv_test.csv', content_type: 'csv')
    end
  end
end
