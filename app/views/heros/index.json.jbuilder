json.array!(@heros) do |hero|
  json.extract! hero, :id, :role, :level, :attribute
  json.url hero_url(hero, format: :json)
end
