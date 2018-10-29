require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'validations' do
    it 'is not valid without name' do
      expect(described_class.new).not_to be_valid
    end

    it 'is valid with name' do
      expect(described_class.new(name: 'Brazil')).to be_valid
    end
  end
end
