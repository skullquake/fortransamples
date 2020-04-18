       subroutine ftparintarr(a,b)bind(C)
       implicit none
       integer::b
       integer::a(b)
          print *,"ftparintarr"
          print *,a
       end subroutine ftparintarr
