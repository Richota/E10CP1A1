# config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
    [200, { 'Content-Type' => 'text/html' }, ['<hp> Lorem ipsum </hp>']]
  end
end

run MiPrimeraWebApp.new
