*** Settings ***
Suite Setup       REPORT SET
Test Setup        Log To Console    <<<START>>>
Test Teardown     Log To Console    ==============================================================================
Resource          TEST_KEYWORD.txt

*** Test Cases ***
TC001_MEUN
    TEST CASE STATUS PENDING    ${TEST_NAME}
    [EW] Get Data All Row For Excel    TESTDATA/TestSenior.xlsx    DATA    ${TEST_NAME}
    TEST CASE STATUS END
    [Teardown]    TEST CASE STATUS TEARDOWN

TC002_QA
    TEST CASE STATUS PENDING    ${TEST_NAME}
    [EW] Get Data All Row For Excel    TESTDATA/TestSenior.xlsx    DATA    ${TEST_NAME}
    TEST CASE STATUS END
    [Teardown]    TEST CASE STATUS TEARDOWN

TC003_APPMOBILE
    TEST CASE STATUS PENDING    ${TEST_NAME}
    [EW] Get Data All Row For Excel    TESTDATA/TestSenior.xlsx    DATA    ${TEST_NAME}
    TEST CASE STATUS END
    [Teardown]    TEST CASE STATUS TEARDOWN

TC004_APPMOBILE_INVALID
    TEST CASE STATUS PENDING    ${TEST_NAME}
    [EW] Get Data All Row For Excel    TESTDATA/TestSenior.xlsx    DATA    ${TEST_NAME}
    TEST CASE STATUS END

