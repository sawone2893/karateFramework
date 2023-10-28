Feature: Validate post request

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: create a user and then get it by id
    Given path '/users'
    And request read('../resources/userCreateRequest.json')
    When method post
    Then status 201
    * def id = response.id
    * print 'created id is: ', id
  