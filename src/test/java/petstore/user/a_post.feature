Feature: Crear un usuario
  Como usuario
  Quiero ejecutar peticiones de tipo post
  Para validar la creación del usuario

  Background:
    * url 'https://petstore.swagger.io/v2/'

  @TESTPETSTORE
  Scenario Outline:  Creación de  un usuario
    Given path 'user'
    And request
    """
      {
  "id": <id>,
  "username": "<username>",
  "firstName": "<firstName>",
  "lastName": "<lastName>",
  "email": "<email>",
  "password": "<password>",
  "phone": "<phone>",
  "userStatus": <userStatus>
}
    """
    When method post
    Then status 200

    Examples:
      | id      | username     | firstName | lastName | email                | password | phone     | userStatus |
      | 1028484 | LuisRicardo1 | Marcelo1  | Gómez    | luisricard@gmail.com | pass123  | 929166711 | 0          |
