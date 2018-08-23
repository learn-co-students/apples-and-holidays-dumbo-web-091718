require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |k, v|
    v << supply
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |k, v|
    v << supply
  end
  return holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season] = {holiday_name => supply_array}
 return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash[:winter].each {|k, v| array << v}
  return array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  list = ""
  holiday_hash.each do |k, v| 
    k = (k.to_s).capitalize + ":"
    s = []
    v.each  do |k1, v1|
      holiday = (((k1.to_s).split("_")).collect! {|el| el.capitalize}).join(" ")+ ": "
      s << holiday + v1.join(", ")
    end
    s.length > 1 ? s = s.join("\n  ") : s = s.join(" ")
    list += <<-LIST
#{k}
  #{s}
    LIST
  end
  puts list
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |ele, v|
    holiday = v.keys
    val = v.values.flatten
    holiday.each do |holi|
      val.each do |ele|
        if ele == "BBQ"
          array << holi
        end
      end
    end
  end
  return array
end







