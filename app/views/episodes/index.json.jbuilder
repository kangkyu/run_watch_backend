json.episodes @episodes do |episode|
  json.count episode.number.to_s.rjust(3,'0')
  json.title episode.title
end
