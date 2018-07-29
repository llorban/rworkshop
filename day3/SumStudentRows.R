#Script: SumStudentRows.R

#Goal: Sum each student's attendance grade

# idx plz
AttendanceDayOneIDX <- which(names(Data)=='Attendance')
AttendanceDayThreeIDX <- which(names(Data)=='Attendance.2')

# calc sumz
AttendanceNumbrz=rowSums(Data[,AttendanceDayOneIDX:AttendanceDayThreeIDX],na.rm=TRUE)

# Get grdzzz
data.frame(Data$FirstName,AttendanceNumbrz)