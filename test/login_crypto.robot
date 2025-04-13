*** Settings ***
Library     Browser    auto_closing_level=KEEP
Library     CryptoLibrary   variable_decryption=True

*** Variables ***
${CUSERNAME}    crypt:kjH5BHRC2Rm5mTp+tSPDvtZ4ZkNphPoleRslZ7dVDF5eAW2SRsrSZtrMZffSUkkqX4YzlA==
${CPASSWORD}    crypt:KAjSHDLtgS08aDsHwno1pyE1aNVzo7JgAqV1FDiG1yQJDj+zNsR+CnA2rRfPF+qLS5sLo/He1UU=

*** Test Cases ***
Test Web Form
    New Browser    chromium    headless=No  
    New Page       http://localhost:5173/
    Get Title      ==    Login Page  
    Type Text      [name="username"]        ${CUSERNAME}    delay=0.1 s 
    Type Secret    [name="password"]        $CPASSWORD    delay=0.1 s
    Click          button[type="submit"]
    Sleep          2s