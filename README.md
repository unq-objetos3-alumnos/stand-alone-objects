# Plantilla de Proyecto Ruby para Objetos 3 (UNQ)

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
