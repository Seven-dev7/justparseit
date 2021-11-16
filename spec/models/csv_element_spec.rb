require 'rails_helper'

RSpec.describe CsvElement, type: :model do
  let(:csv_loader) { create(:csv_loader) }
  let(:csv_element) { create(:csv_element, csv_loader_id: csv_loader.id) }

  it { expect(csv_element).to be_valid }
  it { should belong_to(:csv_loader) }

  describe '#csv_file' do
    let(:csv_loader) { create(:csv_loader) }
    subject { create(:csv_element, csv_loader_id: csv_loader.id).csv_file }

    it { is_expected.to be_an_instance_of(ActiveStorage::Attached::One) }
  end
end
