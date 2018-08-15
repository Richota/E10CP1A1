# Se tiene la clase *Vehicle* que recibe como argumento un modelo y un año.
# El método *engine_start* enciende el vehículo.
# Se pide:
# - Crear una clase *Car* que herede de *Vehicle*
# - El constructor de *Car*, además de heredar las propiedades de *Vehicle*,
# debe incluir un contador de instancias de *Car*.
# - Crear un método de clase en *Car* que devuelva la cantidad de instancias.
# - El método *engine_start* heredado debe además imprimir *'El motor se ha encendido!'*.
# - Instanciar 10 *Cars*.
# - Consultar la cantidad de instancias generadas de *Car* mediante el método de clase creado.

class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# clase Car
class Car < Vehicle
  @@instances = 0
  def initialize(model, year)
    super
    @@instances += 1
  end

  def self.get_instances
    @@instances
  end

  def engine_start
    super
    'El motor se ha encedido'
  end
end

10.times { Car.new('x', 'y') }
c = Car.new('Ecosport', '2017')
puts c.model
puts c.engine_start
puts Car.get_instances
