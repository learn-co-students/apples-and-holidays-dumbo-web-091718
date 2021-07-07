require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, supplies| supplies.push(supply)}
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each {|holiday, supplies| supplies.push(supply)}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each {|supply| winter_supplies.push(supply)}
  end
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s().capitalize()}:"
    holidays.each do |holiday, supplies|
      puts "  #{format(holiday)}: #{supplies.join(", ")}"
    end
  end
end

def format(holiday)
  holiday_words = holiday.to_s().split("_")
  holiday_words.map {|word| word.capitalize()}.join(" ")
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      bbq_holidays << holiday if supplies.include?("BBQ")
    end
  end
  return bbq_holidays
end
