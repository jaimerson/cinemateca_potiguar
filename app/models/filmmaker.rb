class Filmmaker < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :directed_movies, class_name: 'Movie', foreign_key: 'director_id'
  has_many :written_movies, class_name: 'Movie', foreign_key: 'screenwriter_id'
end
