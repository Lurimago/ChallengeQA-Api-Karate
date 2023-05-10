  Feature: Traer al usuario creado
  Como usuario
  Quiero realizar peticiones de tipo delete
  Para verificar que se elimina el usuarios

    Background:
      * url 'https://petstore.swagger.io/v2/'

    @TESTPETSTORE
    Scenario: Eliminar al usuario creado

      * def Username = 'LuisRicardo5'

      Given path 'user', Username
      When method delete
      Then status 200
