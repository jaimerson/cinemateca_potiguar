FactoryBot.define do
  factory :movie do
    sequence(:title) { |n| "Movie #{n}" }
    genre
    country
    length_in_minutes { rand(10..120) }
    rack { rand(1..10) }
    shelf { "#{('A'..'Z').to_a.sample}#{rand(1..10)}" }
  end
end
