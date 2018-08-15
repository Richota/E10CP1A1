# Modulo semana
module Semana
  PD = 'Lunes'

  def self.en_un_meses
    "Un mes tiene 4 semanas."
  end

  def self.en_un_año
    "Un año tiene 52 semanas."
  end
end

puts "La semana comienza el día #{Semana::PD}"
puts Semana.en_un_meses
puts Semana.en_un_año
