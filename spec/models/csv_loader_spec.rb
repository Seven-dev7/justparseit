require 'rails_helper'

RSpec.describe CsvLoader, type: :model do
  let(:csv_loader) { create(:csv_loader) }

  it { expect(csv_loader).to be_valid }
end
