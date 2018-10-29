class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :country
  belongs_to :country, required: false
  belongs_to :director, class_name: 'Filmmaker', required: false
  belongs_to :screenwriter, class_name: 'Filmmaker', required: false

  validates :title, :genre, :country, :rack, :shelf,
    presence: true

  enum category: {
    feature: 0, # Longa
    short: 1,   # Curta
    medium: 2,  # Média
    series: 3   # Série
  }.freeze

  enum rating: {
    free_for_all: 0,
    plus_10: 1,
    plus_12: 2,
    plus_14: 3,
    plus_16: 4,
    plus_18: 5
  }
end
