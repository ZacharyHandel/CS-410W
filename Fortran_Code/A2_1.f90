PROGRAM A2_1
    !Read employee's number of hours worked
    !Read employee's basic rate

    !IF the hours worked exceed 60, print error
        !Else, print expected statement

    REAL :: numberOfHours
    REAL :: overtimeHours
    REAL :: basicRate
    REAL :: pay
    WRITE(*,*) "Number of hours worked: "
    READ(*,*) numberOfHours
    WRITE(*,*) "Basic Rate: "
    READ(*,*) basicRate

    IF(basicRate > 15) THEN
        WRITE(*,*) "ERROR: Invalid pay rate. Enter a pay rate lower than $15.00"
    ELSE IF(numberOfHours > 60) THEN
        WRITE(*,*) "ERROR: Too many hours inputted. Contact management."
    ELSE IF(numberOfHours >=40 .AND. numberOfHours <= 60) THEN
        overtimeHours = numberOfHours - 40
        WRITE(*,*) "OVERTIME HOURS DEBUG: ", overtimeHours
        WRITE(*,*) "REMAINING HOURS DEBUG: ", remainingHours
        pay = (overtimeHours * (basicRate * 1.5)) + (basicRate * 40)
        WRITE(*,*) "Pay: ", pay
    ELSE IF(pay <= 40) THEN
        pay = numberOfHours * basicRate
        WRITE(*,*) "Pay: ", pay
    


    END IF
END PROGRAM A2_1