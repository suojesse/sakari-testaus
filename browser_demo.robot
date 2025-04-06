*** Settings ***
Library     Browser    auto_closing_level=KEEP
Resource    Keywords.robot  

*** Test Cases ***
Test Web Form
    New Browser    chromium    headless=No  
    New Page       http://localhost:5173/
    Get Title      ==    Login Page  
    Type Text      [name="username"]        ${Username}    delay=0.1 s 
    Type Secret    [name="password"]    $Password      delay=0.1 s
    Click          button[type="submit"]
    Sleep          2s