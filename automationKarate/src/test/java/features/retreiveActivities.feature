Feature: Validate Activities get request

  Background: 
    * url 'https://fakerestapi.azurewebsites.net/api/v1'
    * headers {Accept:'application/json',Content-Type:'application/json'}

  Scenario: get all Activities
    Given path '/Activities'
    When method get
    Then status 200
    And print response

  Scenario: get specific Activity
    Given path '/Activities/1'
    When method get
    Then status 200
    And print response
