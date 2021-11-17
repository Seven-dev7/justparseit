require 'rails_helper'

RSpec.describe Element, type: :model do
  let(:loader) { create(:loader) }
  let(:element) { create(:element, loader_id: loader.id) }

  it { expect(element).to be_valid }
  it { should belong_to(:loader) }

  describe '#file' do
    let(:loader) { create(:loader) }
    subject { create(:element, loader_id: loader.id).file }

    it { is_expected.to be_an_instance_of(ActiveStorage::Attached::One) }
  end
end
