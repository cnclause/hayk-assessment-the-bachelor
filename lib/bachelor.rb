require "pry" 



def get_first_name_of_season_winner(data, season) 
data[season].find do |seas| 
  seas["status"] = "Winner"
end["name"].split[0]
end

def all_seasons
  data.values.flatten  
end

def get_contestant_name(data, occupation) 
  all_seasons.find do |job| 
   job["occupation"] == occupation
end ["name"] 
end


def count_contestants_by_hometown(data, hometown)
  all_seasons.count do |home| 
    home["hometown"]== hometown
  end
end

def get_occupation(data, hometown)
  all_seasons.find do |home| 
    home["hometown"] == hometown
  end["occupation"]
end 




def get_average_age_for_season(data, season)
  age_array = data[season].map do |s| 
    s["age"].to_i 
  end
  added_ages = age_array.reduce(:+).to_f 
  
(added_ages/age_array.length).round

  
end 

