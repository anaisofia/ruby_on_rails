class Roulette
  attr_accessor :history
  def initialize
    @history = []
  end

  def play(numero)
    numero_rand = rand(1..10).to_i
    write_history(numero, numero_rand)
    return numero == numero_rand
  end

  def write_history(numero_jugado, numero_ruleta)
    @history << {
      :resultado=> (numero_jugado == numero_ruleta),
      :numero_jugado=> numero_jugado,
      :numero_ruleta=> numero_ruleta
    }
  end

  def generador_archivos #método que crea el hash que usarán ambos métodos, (para no escribir el mismo código 2 veces)
    File.write("roulette_history#{self.object_id}.txt", write_data(history))
  end

  def generador_archivos_ganadores #usar .select sobre history, para poder guardar solo los ganadores en vez de archivos vacios
    File.write("rouletter_winners#{self.object_id}.txt", write_data(history.select{|h| h[:resultado]}))
  end

  def write_data(array)
    array.map{|h| "#{h[:resultado]}, #{h[:numero_jugado]}, #{h[:numero_ruleta]}"}.join("\n")
  end

end

  p1 = Roulette.new
  p2 = Roulette.new
  p3 = Roulette.new

  puts p1.play(5)
  puts p2.play(8)
  puts p3.play(2)
  puts p1.generador_archivos
  puts p1.generador_archivos_ganadores
