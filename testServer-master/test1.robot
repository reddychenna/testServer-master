*** Settings ***
Library  OperatingSystem
Library  String
Library  Selenium2Library

*** Variables ***
${Password}  passw0rd
#Added a commnet
#Added a new comment
#Added a comment to trigger a build.

*** test cases ***
Test case one
    #Selenium2Library.Open Browser  http://www.google.com  firefox
    Selenium2Library.Open Browser  http://ec2-18-222-48-233.us-east-2.compute.amazonaws.com:4000/  firefox
    Input Text   username   python
#    Focus   password  : Added additional comment
    Input Text   password   python	
    Submit Form
    log to console  EndOfTestCase 
    Selenium2Library.Close Browser 
write_variable_in_file
  ${datastring} =  Generate Random String  4  first
  ${Username} =  Generate Random String  1  aa
  log to console   ${datastring}
  log to console   ${Username}
  run keyword if  '${Username}' == 'b'   write_variable_in_file  ${datastring}
  run keyword if  '${Username}' == 'b'   write_variable_in_file  ${datastring}
  write_variable_in_file  ${datastring}
*** Keywords ***
write_variable_in_file
  [Arguments]  ${variable}
  #Open Browser  http://www.google.com  firefox
  sleep  1 sec
#  Selenium2Library.Open Browser  http://www.google.com  firefox 
# Added a new comment
# Added comment 11/16/18 01 02 0 06 PRADHYUM NEw file file2
# New comment added for checkin  for one more line
#New line for commit
