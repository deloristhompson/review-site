FactoryGirl.define do
  factory :comic do
    sequence(:title) { |n| "Spider-Man #{n}"}
    publisher "Stan Lee"
    year_published 1961
    condition "New"
    
  end
end
