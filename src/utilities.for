      MODULE UTILITIES
          IMPLICIT NONE
          PRIVATE
          PUBLIC :: STDERR, TOSTR
      CONTAINS
          SUBROUTINE STDERR(MESSAGE)
              USE ISO_FORTRAN_ENV, ONLY : ERROR_UNIT
              CHARACTER(LEN=*) :: MESSAGE

              WRITE(ERROR_UNIT, '(A)') MESSAGE
          END SUBROUTINE STDERR

          PURE FUNCTION TOSTR(K) RESULT(STR)
              INTEGER, INTENT(IN) :: K
              CHARACTER(LEN=20) :: STR

              WRITE(STR, *) K
              STR = ADJUSTL(STR)
          END FUNCTION TOSTR
      END MODULE UTILITIES

