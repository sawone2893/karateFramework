Feature: Validate Activities post request

  Background: 
    * url 'https://fakerestapi.azurewebsites.net/api/v1'
    * headers {Accept:'application/json',Content-Type:'application/json'}

  Scenario: Created Activities
    Given path '/Activities'
    And request  read('../resources/activitiesCreateRequest.json')
    When method post
    Then status 200
    And print response

