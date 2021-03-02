*** Test Cases ***
First Case
    Log     Hello, world!(INFO)   # Normal INFO message.
    Log     Hello, World!(Warn)     WARN
    Log     Hello, console!(via Log)  console=yes

    Log To Console	Hello, console!(via Log To Console)
    Log To Console	Hello, stderr!	STDERR
    Log To Console	Message starts here and is	no_newline=true
    Log To Console	continued without newline.