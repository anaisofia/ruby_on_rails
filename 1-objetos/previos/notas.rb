class Student
  attr_accessor :name, :notas
  def initialize(name, notas)
    @name = name
    @notas = notas.map(&:to_i)
  end
  #Acá saco el promedio
  def promedio
    @notas.inject(&:+) / @notas.size.to_f
  end
end

file = File.open('notas.txt', 'r')
data = file.readlines
file.close

# puts data

alumnos = []
data.each do |line| #Leer el archivo externo y agregar al arreglo las notas
  resultados = line.split(', ')
    nombre = resultados[0]
    notas = resultados[1..resultados.size]
    Student.new(nombre, notas)
    alumnos << Student.new(nombre, notas)
end

#Promedio por alumno
alumnos.each do |alumno|
  print 'Promedio de: '
  puts alumno.name
  puts alumno.promedio
  puts '-----------------------'
end

puts "\n"

#Promedio total del Curso
promedios = alumnos.map(&:promedio)
  puts 'PROMEDIO TOTAL DEL CURSO'
  puts promedios.inject(:+) / promedios.size
  puts '-----------------------'
