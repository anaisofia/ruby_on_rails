class Morseable
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def generate_hash
    h = {0=>'-----',
      1=>'.----',
      2=>'..---',
      3=>'...--',
      4=>'....-',
      5=>'.....',
      6=>'-....',
      7=>'--...',
      8=>'---..',
      9=>'----.'}
  end

  def to_morse
    if @number <= 9
      generate_hash[@number]
    end
  end

end

m = Morseable.new(1)
print m.to_morse
