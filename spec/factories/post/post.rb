FactoryBot.define do
  factory :post do
    body { 'A very long post' }
    author
  end
end
