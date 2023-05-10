Feature: Traer al usuario creado
  Como usuario
  Quiero realizar peticiones de tipo get
  Para verificar que se creó al usuario correctamente

  Background:
    * url 'https://petstore.swagger.io/v2/'

  @TESTPETSTORE
  Scenario: Traer al usuario

    * def Username = 'LuisRicardo1'

    Given path 'user', Username
    When method get
    Then status 200

