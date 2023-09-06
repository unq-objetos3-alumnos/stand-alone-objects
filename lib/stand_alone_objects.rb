def object(clase = Object, &definicion)
  new_object = clase.new
  new_object.singleton_class.class_exec(&definicion)
  new_object
end
