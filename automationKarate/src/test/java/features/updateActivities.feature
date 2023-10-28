Feature: Validate Activities put request

  Background: 
    * url 'https://fakerestapi.azurewebsites.net/api/v1'
    * headers {Accept:'application/json',Content-Type:'application/json'}

  Scenario: Created Activities
    Given path '/Activities/58'
    And request  read('../resources/activitiesUpdateRequest.json')
    When method put
    Then status 200
    And print response

