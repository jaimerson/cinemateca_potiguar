FactoryBot.define do
  factory :filmmaker, aliases: %i[director screenwriter] do
    sequence(:name) { |n| "Filmmaker #{n}" }
  end
end
