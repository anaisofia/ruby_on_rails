require 'date'

class Course
  attr_accessor :name, :start, :finish
  def initialize(name, *start, finish)
    @name = name
    @start = start
    @finish = finish
  end

  def self.read_file
    cursos = []
    data = []
    File.open('cursos.txt', 'r') { |file| data = file.readlines}

    data.each do |tab|
      ls = tab.split(', ')
      cursos << Course.new(*ls)
    end
  end

#Saber qué cursos comienzan previo a una fecha entregada como argumento.
  def self.will_start

    cursos = []
    data = []
    File.open('cursos.txt', 'r') { |file| data = file.readlines}

    today = Date.today
    data.each do |tab|
      ls = tab.split(', ')
      cursos << Course.new(*ls)
    end

    if Time.new > today
      puts "Este curso iniciará pronto"
    elsif Time.new < today
      puts "Este curso culminará pronto"
    else Time.new >= 2018-01-01
      puts "Excepción"
    end
  end
end


puts Course.read_file
puts Course.will_start
