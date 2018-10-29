require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it 'is not valid without proper fields' do
      expect(described_class.new).not_to be_valid
    end

    it 'is valid with proper fields' do
      genre = Genre.new(name: 'Ação')
      director = Filmmaker.new(name: 'Marcos Paulo')
      screenwriter = Filmmaker.new(name: 'Renê Belmonte')
      country = Country.new(name: 'Brasil')

      attributes = {
        title: 'Assalto ao Banco Central',
        genre: genre,
        director: director,
        screenwriter: screenwriter,
        country: country,
        year: 2011,
        category: Movie.categories[:feature],
        length_in_minutes: 101,
        rating: Movie.ratings[:plus_14],
        rack: '1',
        shelf: 'A1'
      }
      expect(described_class.new(attributes)).to be_valid
    end
  end
end
