Feature: Validate Activities Delete request

  Background: 
    * url 'https://fakerestapi.azurewebsites.net/api/v1'
    * headers {Accept:'application/json',Content-Type:'application/json'}

  Scenario: Delete specific Activity
    Given path '/Activities/1'
    When method get
    Then status 200
    And print response
