# README

Desarrollo de examen build en rails 



```bash 
# Inicio del proyecto en postgresql
rails new exam_coding -d postgresql
# Redireccionar a la creación del proyecto
cd exam_coding
# Crear db en postgresql
rails db:create
## Install gem's project
rails webpacker:install
# Iniciar servidor
rails s

```



## Generar controlador
```bash
rails g controller Welcomes index
rails g controller Builds index show edit new delete
rails g controller Apartments index show edit new delete
rails destroy controller subject index show edit new delete
```

## Generar Modelos
```bash
# modelo building con los campos nombre, direccion y ciudad
rails g model Building nombre_edificio direccion ciudad
# modelo building con los campos numero y referencia a building
rails g model Apartment numero_depto:integer building:references
rails db:migrate 
```
