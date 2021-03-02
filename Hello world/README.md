# Hello World Demo
## Log
### Logs the given message with the given level.

Valid levels are TRACE, DEBUG, INFO (default), HTML, WARN, and ERROR. Messages below the current active log level are ignored.

Messages logged with the WARN or ERROR levels will be automatically visible also in the console and in the Test Execution Errors section in the log file.

## Log To Console
### Logs the given message to the console.

By default uses the standard output stream. Using the standard error stream is possibly by giving the stream argument value STDERR (case-insensitive).

By default appends a newline to the logged message. This can be disabled by giving the no_newline argument a true value (see Boolean arguments).

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
In **Console window** :

```
(base) cheng@linux:~/Documents/Robotframework/Hello word$ robot Hello\ world.robot 
==============================================================================
Hello world                                                                   
==============================================================================
[ WARN ] Hello, World!(Warn)                                                  
First Case                                                            .Hello, console!(via Log)
.Hello, console!(via Log To Console)
.Hello, stderr!
.Message starts here and is.continued without newline.
First Case                                                            | PASS |
------------------------------------------------------------------------------
Hello world                                                           | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Output:  /home/cheng/Documents/Robotframework/Hello word/output.xml
Log:     /home/cheng/Documents/Robotframework/Hello word/log.html
Report:  /home/cheng/Documents/Robotframework/Hello word/report.html
(base) cheng@linux:~/Documents/Robotframework/Hello word$ 
```

![Test Execution Log](https://github.com/chendebiao/Robot_Framework_Memo/blob/main/Hello%20world/Test%20Execution%20Log.jpg)