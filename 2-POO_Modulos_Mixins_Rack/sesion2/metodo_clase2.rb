module Formula
  def perimetro
    total_perim = self.lados.sum
    "El perimetro es de #{total_perim} centímetros"
  end

  def area
    if self.lados.size == 4
      total_area = self.lados[0] * self.lados[1]
      "El area es de #{total_area} centímetros"
    elsif self.lados.size == 3 #calcular area del triangulo: base (2do elemento) * altura (1er elemento) / 2
      total_area = self.lados[1] * self.lados[0] / 2
      "El area es de #{total_area} centímetros"
    elsif self.lados.size == 3 #calcular area del triangulo si este es un tr.rectangulo |
      if (self.lados[0]**2) + (self.lados[1]**2) == self.lados[2]**2
        total_area = self.lados[1] * self.lados[0] / 2
        "Es un triangulo rectangulo y su area es de #{total_area} centímetros"
      end
    else
      "no sé cómo calcularlo aún"
    end
  end
end


class FiguraGeometrica
  include Formula
  def initialize(medidas)
    @medidas = medidas # @lados es un array de tamaño n >= 3, ordenado según las manecillas del reloj
  end

  def lados
    @medidas
  end

end

cuadrado = FiguraGeometrica.new([2, 2, 2, 2])
puts cuadrado.perimetro
puts cuadrado.area

rectangulo = FiguraGeometrica.new([2, 4, 2, 4])
puts rectangulo.perimetro
puts rectangulo.area

triangulo = FiguraGeometrica.new([5, 12, 13])
puts triangulo.perimetro
puts triangulo.area

class Rectangulo
  attr_reader :medidas
  include Formula
  def initialize(largo, ancho)
    @largo = largo.to_f
    @ancho = ancho.to_f
  end

  def lados
    medidas = @largo, @ancho
    puts medidas.to_s
    puts "El rectángulo mide #{@largo} cm de largo y #{@ancho} cm de ancho"
  end

end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado.to_f
  end

  def lados
    medidas = @lado
    puts medidas.to_s
    puts "El cuadrado mide #{@lado} cm por lado"
  end

end

# puts Rectangulo.new(2, 5).lados
# puts Cuadrado.new(3).lados
#
# rectangle = Rectangulo.new(2, 5)
# puts "El perimetro del rectángulo #{rectangle.perimetro}"
#
# square = Cuadrado.new(3)
# puts "El area del cuadrado #{square.area}"
