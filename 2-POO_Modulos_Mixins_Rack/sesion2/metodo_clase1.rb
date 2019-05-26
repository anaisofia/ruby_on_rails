class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @nota3 = nota3.to_i
    @nota4 = nota4.to_i
  end

  def self.read_file(filename = 'notas.txt')
    file = File.open(filename, 'r')
    data = file.readlines
    file.close

    alumnos = []

    data.each do |alumno|
      nombre, nota1, nota2, nota3, nota4 = alumno.split(',')
      alumnos << Alumno.new(nombre, nota1, nota2, nota3, nota4)
    end
  end
end

alumnos = Alumno.read_file
puts alumnos
