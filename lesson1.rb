# frozen_string_literal: true

require 'date'
class Lesson1
  def sum(val = 0)
    str = val.to_s
    sum = 0
    str.each_char do |s|
      sum += s.to_i
    end
    sum
  end

  def age(birthday)
    age = Time.new - Date.parse(birthday).to_time
    sec = age.to_i
    min = (sec / 60).to_i
    day = (min / 60).to_i
    mons = (day / 24).to_i
    year = (mons / 365).to_i
    "Я живу #{year} года или #{mons} дней или #{day} часов
    или #{min} минут или #{sec} секунд"
  rescue ArgumentError, TypeError
    'Invalid Date Format'
  end

  def name
    puts 'Enter your surname:'
    surname = gets.chomp
    puts 'Enter your name:'
    name = gets.chomp
    puts 'Enter your patronymic:'
    patronymic = gets.chomp
    "Hello #{surname} #{name} #{patronymic}!"
  end
end
