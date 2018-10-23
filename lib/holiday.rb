require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
<<<<<<< HEAD
  #V1
      #holiday_hash[:summer][:fourth_of_july][1]
  #v2
    holiday_hash.each do |season, data|
      data.each do |fest, arr|
      if fest == :fourth_of_july 
          return arr[1]
        end
      end  
    end
  end

=======
  holiday_hash.each do |season, data|
    data.each do |fest, arr|
      if fest == :fourth_of_july && arr.include?("BBQ")
        arr.each do |item|
          if item == "BBQ"
            return item
          end
        end
      end
    end
  end  
end
>>>>>>> 6ed30a309ae61445e8cd052b33877305e63b3ffe


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  #V1
      #holiday_hash[:winter].each do |holiday, items|
      #items << supply
      #  puts items
       #   end
      #end
      #
  #V2
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |fest, arr|
        arr.push(supply)
      end
    end
  end
end  


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #V1
    # holiday_hash[:spring].each do |holiday, items|
    #  items << supply
    #  puts items
    #end
    #end
  #V2
        holiday_hash.each do |season, data|
    if season == :spring
      data.each do |fest, arr|
        arr.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  #V1
      #holiday_hash[:winter].values.flatten
  #V2
  arr = holiday_hash[:winter].map do |fest, val|
        val
  end
   arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, stuff|
      stuff = stuff.join(", ")
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
      puts "  " + holiday + " " + stuff
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
    keys = []
		holiday_hash.each do |season, data|
      data.each do |fest, arr|
      if arr.include?("BBQ") 
           keys.push(fest)
        end
      end  
    end
  return keys
end  
    
  
 







