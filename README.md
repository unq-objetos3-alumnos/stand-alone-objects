# Ejemplo de implementación de objetos "stand-alone"

## Organización del proyecto
- En la carpeta `lib` pueden encontrar la implementación de la lógica para crear objetos y clases "stand-alone".
- En la carpeta `ejemplos` pueden encontrar un ejemplo de uso, en donde implementamos las operaciones básicas entre booleanos.
- En la carpeta `spec` están los tests para ambas cosas (la implementación de la solución y los ejemplos de uso).

## Setup

La primera vez que clonen el repositorio deberan instalar las dependencias que ya tenemos definidas en Gemfile (rspec), para esto tienen que tener instalado `ruby` y `bundler`.

Verificar que tengo Ruby 3.2.1:

```bash
> ruby -v
ruby 3.2.1 (2023-02-08 revision 31819e82c8) [x86_64-linux]
```

Verificar que tengo Bundler:

```bash
> bundle -v
Bundler version 2.4.6
```

Ahora sí, instalamos con:

```bash
> bundle install
```

## Ejectuar los tests

Desde una terminal:

```bash
> bundle exec rspec
```
