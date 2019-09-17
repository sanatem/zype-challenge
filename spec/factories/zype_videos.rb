FactoryBot.define do
  factory :zype_video do
    id          { '56a7b83069702d2f830cd9b7' }
    title       { Faker::Name.name }
    thumbnail   { 'https://image.zype.com/56a7b4a369702d1927000000/56a7b83069702d2f830fd9b7/custom_thumbnail/240.jpg?1507597602'}
    description { Faker::Lorem.paragraph }
  end
end