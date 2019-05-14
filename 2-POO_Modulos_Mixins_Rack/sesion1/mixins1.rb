module Herviboro
  class Herb
    @@definir = 'Sólo me alimento de vegetales!'
    def self.definir
      @@definir
    end
    def dieta
      "Soy un Herviboro!"
    end
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal < Herviboro
  extend Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro::definir.new
