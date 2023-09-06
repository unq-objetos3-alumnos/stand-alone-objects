def clase(superclase = Object, &definicion)
  new_class = Class.new(superclase)
  new_class.class_exec(&definicion)
  new_class
end
