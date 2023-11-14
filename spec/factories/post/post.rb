FactoryBot.define do
  factory :post do
    content { 'A very long post' }
    author
  end
end
