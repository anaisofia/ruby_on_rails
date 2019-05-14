#Transformar la clase Semana en un módulo y obtener la misma salida:
# La semana comienza el día Lunes
# Un mes tiene 4 semanas.
# Un año tiene 52 semanas.

module Semana
  class Week
    @@primer_dia = 'Lunes'
    def self.primer_dia
      @@primer_dia
    end
    def self.en_un_meses
      "Un mes tiene 4 semanas."
    end
    def self.en_un_año
      "Un año tiene 52 semanas."
    end
  end
end

  puts "La semana comienza el día #{Semana::Week.primer_dia}"
  puts Semana::Week.en_un_meses
  puts Semana::Week.en_un_año
