require 'stand_alone_objects'

class Booleano
  def !
    raise 'subclass responsibility'
  end

  def &(otro)
    raise 'subclass responsibility'
  end

  def |(otro)
    !(!self & !otro)
  end
end

Verdadero = object Booleano do
  def !
    Falso
  end

  def &(otro)
    otro
  end
end

Falso = object Booleano do
  def !
    Verdadero
  end

  def &(otro)
    self
  end
end