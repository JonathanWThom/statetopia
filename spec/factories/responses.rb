FactoryGirl.define do
  factory :response do
    event
    description "winning"
    capital_effect -100
    population_effect 0
    stability_effect 0
    resources_effect -100
    nation_id 1
  end
end
