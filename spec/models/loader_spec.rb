require 'rails_helper'

RSpec.describe Loader, type: :model do
  let(:loader) { create(:loader) }

  it { expect(loader).to be_valid }
end
