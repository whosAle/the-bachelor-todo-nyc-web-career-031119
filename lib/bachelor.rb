def get_first_name_of_season_winner(data, season)
  data[season][0]["name"].split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, v|
    v.each do |person, info|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each { |season, info| info.each { |person, v| counter += 1 if person["hometown"] == hometown } }

  counter
end

def get_occupation(data, hometown)
  data.each { |season, info| info.each { |person, v| return person["occupation"] if person["hometown"] == hometown } }
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0
  data.each do |season, info|
    contestants = info.length
    info.each { |person, v| age += person["age"].to_f }
  end

  age/contestants.round(0)

end
