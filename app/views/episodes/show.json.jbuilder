json.episode do
  json.count @episode.number.to_s.rjust(3,'0')
  json.title @episode.title
  json.description @episode.description
end
