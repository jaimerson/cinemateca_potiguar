require 'rails_helper'

RSpec.describe Filmmaker, type: :model do
  describe 'validations' do
    it 'is not valid without name' do
      expect(described_class.new).not_to be_valid
    end

    it 'is valid with name' do
      expect(described_class.new(name: 'Tarantino')).to be_valid
    end
  end

  describe '#directed_movies' do
    let(:filmmaker) { FactoryBot.create(:director, name: 'John Wick') }
    let!(:movies) { FactoryBot.create_list(:movie, 2, director: filmmaker) }
    let!(:unrelated_movie) { FactoryBot.create(:movie) }

    it 'returns the movies directed by the film maker' do
      expect(filmmaker.directed_movies).to match_array(movies)
    end
  end

  describe '#written_movies' do
    let(:filmmaker) { FactoryBot.create(:screenwriter, name: 'John Wick') }
    let!(:movies) { FactoryBot.create_list(:movie, 2, screenwriter: filmmaker) }
    let!(:unrelated_movie) { FactoryBot.create(:movie) }

    it 'returns the movies directed by the film maker' do
      expect(filmmaker.written_movies).to match_array(movies)
    end
  end
end
