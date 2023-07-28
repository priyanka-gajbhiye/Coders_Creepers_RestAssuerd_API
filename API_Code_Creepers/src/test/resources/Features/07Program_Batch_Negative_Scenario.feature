Feature: Check Negative Scenario for Batch Module

  Scenario Outline: Create a batch with valid endponts and request body with exsisting batch name
    Given User create post request with exsisting batch name
    When User sends HTTPS request, request body from excel sheet again "<Sheetname>" and <RowNumber>
    Then User receives 400 Bad Request status

    Examples: 
      | Sheetname | RowNumber |
      | Sheet2    |         0 |

  Scenario Outline: Create a batch missing mandatory fields in request body
    Given User create post request missing mandatory fields
    When User sends HTTPS request, request body from excel sheet "<Sheetname>" and <RowNumber> with missing mandatory field
    Then User receives 400 Bad Requests status

    Examples: 
      | Sheetname | RowNumber |
      | Sheet2    |         1 |

  Scenario Outline: Check user is able to retrive batch with invalid batchid
    Given User create get request with invalid batchid
    When User sends HTTPS request by invalid <id>
    Then User receives 404 NOT FOUND status

    Examples: 
      | id |
      | 11 |

  Scenario Outline: Check user is able to retrive batch with invalid batchname
    Given User create get request with invalid batchname
    When User sends HTTPS request with invalid "<batchname>"
    Then User receives 404 NOT FOUND status by invalid batchname

    Examples: 
      | batchname                  |
      | Jul23-Coders_Creepers-SDET |

  Scenario Outline: Check user is able to retrive batch with invalid programid
    Given User create get request with invalid programid
    When User sends HTTPS request <programid>
    Then User receives 404 NOT FOUND status for programid

    Examples: 
      | programid |
      |        14 |

  Scenario Outline: Update a batch with invalid batchid and mandatory request body
    Given User create put request and invalid batchid
    When User sends HTTPS request for <ID> request body from excel sheet "<Sheetname>" and <RowNumber>
    Then The user receives 404 NOT FOUND status for invalid batchid

    Examples: 
      | ID | Sheetname | RowNumber |
      | 11 | Sheet2    |         0 |

  Scenario Outline: Update a batch with valid batchid and missing mandatory feilds from request body
    Given User creates put request and valid batchid and missing mandatory feilds
    When User sends HTTPS request for <ID> request body from excel sheet "<Sheetname>" and <RowNumber> with missing mandatory feilds
    Then The user receives 400 Bad Request status for missing mandatory feilds

    Examples: 
      | ID    | Sheetname | RowNumber |
      | 11356 | Sheet2    |         4 |

  Scenario Outline: Check user is able to delete batch with invalid programname
    Given User create delete request with invalid batchid
    When User sends HTTPS request with Invalid <id>
    Then The user receives 404 Bad Request status for Invalid batchid

    Examples: 
      | id |
      | 11 |
