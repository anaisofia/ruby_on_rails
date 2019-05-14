#config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    [000, {}, []]
  end
end
run MiPrimeraWebApp.new
