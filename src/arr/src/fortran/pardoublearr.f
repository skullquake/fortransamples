       subroutine ftpardoublearr(a,b)bind(C)
       implicit none
       integer::b
       double precision::a(b)
          print *,"ftpardoublearr"
          print *,a
       end subroutine ftpardoublearr
