class Estudiante
  def initialize(nota1, nota2, nota3)
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
  end

  def promedio
    (@nota1 + @nota2 + @nota3) / 3.0
  end
end

puts Estudiante.new(2, 3, 4).promedio
