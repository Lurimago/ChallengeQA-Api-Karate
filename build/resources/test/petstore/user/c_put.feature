Feature: Actualizar el nombre y correo del usuario creado
  Como usuario
  Quiero realizar peticiones de tipo PUT
  Para verificar la modificación del usuario

  Background:
    * url 'https://petstore.swagger.io/v2/'

  @TESTPETSTORE
  Scenario Outline: Actualizar nombre y correo del usuario

    * def Username = 'LuisRicardo1'

    Given path 'user', Username
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
    When method put
    Then status 200

    Examples:
      | id      | username     | firstName | lastName | email                 | password | phone     | userStatus |
      | 1028484 | LuisRicardo4 | Marcelo4  | Gómez4   | luisricard4@gmail.com | pass124  | 929166714 | 0          |

  @TESTPETSTORE
  Scenario Outline: Actualizar y traer al usuario
    * def Username = 'LuisRicardo1'

    Given path 'user', Username
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
    When method put
    Then status 200
    And def userUpdated = response.username

    Given path 'user',"<username>"
    When method get
    Then status 200

    Examples:
      | id      | username     | firstName | lastName | email                 | password | phone     | userStatus |
      | 1028484 | LuisRicardo5 | Marcelo5  | Gómez5   | luisricard5@gmail.com | pass125  | 929166715 | 0          |