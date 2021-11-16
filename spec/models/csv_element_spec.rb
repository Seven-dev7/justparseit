require 'rails_helper'

RSpec.describe CsvElement, type: :model do
  let(:csv_loader) { create(:csv_loader)}
  let(:csv_element) { build(:csv_element, csv_loader_id: csv_loader.id) }

  it { expect(csv_element).to be_valid }
end
