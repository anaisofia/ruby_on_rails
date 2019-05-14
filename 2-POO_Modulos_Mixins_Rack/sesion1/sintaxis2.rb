# La última instrucción debe imprimir "Hola! Soy la clase MiClase"

class MiClase
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.saludar
    "Hola! Soy la clase #{@name}"
  end
end

c = MiClase.new('Clase Uno').class
c.name
print MiClase.saludar
print c
