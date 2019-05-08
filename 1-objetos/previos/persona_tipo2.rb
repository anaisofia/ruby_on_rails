class PersonaTipo2
  attr_accessor :edad
  def initialize(edad = 5) #método constructor
    @edad = edad
  end

  def envejecer
    @edad += 1
  end

#No necesito las siguientes líneas de código si ya estoy usando usar el "attr_accessor :edad"
  # def mostrar_edad
  #   puts @edad
  # end

end

p1 = PersonaTipo2.new(21) #también puedo agregar acá la edad inicial
#No necesito las siguientes líneas de código si ya estoy usando usar el "attr_accessor :edad"
# 10.times do
#   p1.envejecer
# end
# p1.mostrar_edad #10

p1.edad = 31
puts p1.edad
