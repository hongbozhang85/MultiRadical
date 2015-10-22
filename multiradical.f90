program main
implicit none

real :: NO(1024)
integer :: i, homo, lumo
real :: yi(5),Ti(5)

open(unit=44,file="NO.dat")
read(44,*) NO
close(44)

!write(*,*) NO(1)

do i=1,1023,1
	if ( NO(i)>1 .and. NO(i+1)<1 ) then
		homo=i
		lumo=i+1
	end if
end do

do i=1,5,1
	Ti(i)= ( NO(homo+1-i)-NO(lumo-1+i) )/2
	yi(i)= 1- 2*Ti(i) / ( 1+Ti(i)*Ti(i) )
end do

write(*,*) yi

end program
