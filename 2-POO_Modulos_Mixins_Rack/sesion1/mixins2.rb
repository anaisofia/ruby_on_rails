module Test
  def result
    a = (self.nota1 + self.nota2) / 2.0
    if a >= 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

module Attendance
  def student_quantity
    self.cantidad
  end
end

class Student
  attr_reader :nota1, :nota2
  include Test
  extend Attendance
  @@quantity = 0
  def initialize(nombre, nota1, nota2)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.cantidad
    @@quantity
  end
end

10.times do
  Student.new('sofi', rand(1..7).to_i, rand(1..7).to_i).result
  puts 'Estatus:'
end

puts "Se han creado #{Student.student_quantity} estudiantes"
