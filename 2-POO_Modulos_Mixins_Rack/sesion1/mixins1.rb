# Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia. Finalmente imprimir la definición de Hervíboro

module Herviboro
  class Hierbas
    @@definir = 'Sólo me alimento de vegetales!'
    def self.definir
      puts @@definir
    end

    def dieta
      'Soy un Herviboro!'
    end
  end
end

class Animal
  def saludar
    'Soy un animal!'
  end
end

class Conejo < Animal
  extend Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
# conejo.dieta
puts Herviboro::Hierbas.definir
