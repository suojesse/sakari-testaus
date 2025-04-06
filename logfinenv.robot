*** Settings ***
Library     Browser    auto_closing_level=KEEP
Variables   test/front/load_env.py

*** Test Cases ***
Test Web Form
    New Browser    chromium    headless=No  
    New Page       http://localhost:5173/
    Get Title      ==    Login Page  
    Type Text      [name="username"]        ${USER}    delay=0.1 s 
    Type Secret    [name="password"]    $PASSWORD      delay=0.1 s
    Click          button[type="submit"]
    Sleep          2s