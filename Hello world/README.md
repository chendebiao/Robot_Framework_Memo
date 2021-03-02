# Hello World Demo
In **Hello world.robot** :

```
*** Test Cases ***
First Case
    Log     Hello, world!(INFO)   # Normal INFO message.
    Log     Hello, World!(Warn)     WARN
    Log     Hello, console!(via Log)  console=yes

    Log To Console	Hello, console!(via Log To Console)
    Log To Console	Hello, stderr!	STDERR
    Log To Console	Message starts here and is	no_newline=true
    Log To Console	continued without newline.

```

## Logs the given message with the given level.
Logs the given message with the given level.

Valid levels are TRACE, DEBUG, INFO (default), HTML, WARN, and ERROR. Messages below the current active log level are ignored.

Messages logged with the WARN or ERROR levels will be automatically visible also in the console and in the Test Execution Errors section in the log file.

## Logs the given message to the console.

By default uses the standard output stream. Using the standard error stream is possibly by giving the stream argument value STDERR (case-insensitive).

By default appends a newline to the logged message. This can be disabled by giving the no_newline argument a true value (see Boolean arguments).