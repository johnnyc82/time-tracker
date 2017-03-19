Fabricator(:task) do
  id { Faker::Number.number(4) }
  title { Faker::Lorem.sentence }
  state 1
  list_id { Faker::Number.number(4) }
  time_elapsed { Faker::Number.number(6) }
  time_est { Faker::Number.number(6) }
end
