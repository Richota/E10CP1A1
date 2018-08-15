class Student
  attr_accessor :nombre, :nota1, :nota2
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
  end

  include Test
end

module Test
  def result(nota1, nota2)
    promedio = (nota1 + nota2) / 2
  end
end

module Attendance
  def student_quantity

  end
end
