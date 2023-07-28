Feature: Program Module

  Scenario Outline: Check if user is able to create a program with valid endpoints and request body
    Given: User creates POST request for assignment submission for the LMS API endpoints
    When User sends HTTPS request and request body with mandatory and additional fields from the program excel sheet "<SheetName>" and <RowNumber>
    Then User receives 201 created status with response body for the program post request

    Examples: 
      | SheetName   | RowNumber |
      | ProgramData |         0 |

      Scenario Outline: Check user is able to retrive all programs
    Given:User create get request
    When User sends HTTPS request to get all programs
    Then The user submits the get request and verifies the status 200
  	
  Scenario Outline: check user is able to get request by programId
    Given:User create get request by programid
    When User sends HTTPS request to get request by valid programid
    Then The user submits the get request and verifies the status 200
  	
  	
 Scenario Outline: update a program with valid id and request body
    Given: The user create update request
    When User sends HTTPS request with mandatory fields to update a request by program id from the excel sheet "<SheetName>" and <RowNumber>
    Then The user submits the update request and verifies the status 200
    
    Examples: 
      |SheetName        | RowNumber |
      |ProgramData     |         1 |
      
  Scenario Outline: update a program with  valid programName
    Given: The user create update request
    When User sends HTTPS request with mandatory fields to update program by program name from the excel sheet "<SheetName>" and <RowNumber>
    Then The user submits the update request and verifies the status 200
    
   Examples: 
      |SheetName        | RowNumber |
      |ProgramData     |         2 |
  
  