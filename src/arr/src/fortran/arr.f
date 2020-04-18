       subroutine ftarr()bind(C)
       implicit none
       integer::err
       integer::a
       integer::b(8)
       integer::c(8)
       integer::d(2,2)
       integer,allocatable::e(:)
       integer,allocatable::f(:,:)
       integer::i
       integer::j
          print *,"----------------------------------------"
          do a=1,8
            print *,b(a)
          enddo
          b(:)=0
          print *,"----------------------------------------"
          do a=1,8
            print *,b(a)
          enddo
          b(5:8)=8
          print *,"----------------------------------------"
          do a=1,8
            print *,b(a)
          enddo
          print *,"----------------------------------------"
          do a=1,8
            b(a)=a
          enddo
          do a=1,8
            print *,b(a)
          enddo
          b(:)=4
          b(1:8:2)=8
          print *,"----------------------------------------"
          do a=1,8
            print *,b(a)
          enddo
          print *,"----------------------------------------"
          c=b
          do a=1,8
            print *,c(a)
          enddo
          print *,"----------------------------------------"
          b(:)=2
          c(:)=4
          b(5:8)=c(5:8)
          do a=1,8
            print *,b(a)
          enddo
          print *,"----------------------------------------"
          do i=1,2
            do j=1,2
              d(i,j)=(i-1)*2+j-1
            enddo
          enddo
          do i=1,2
            do j=1,2
              print *,d(i,j)
            enddo
          enddo
          print *,"----------------------------------------"
          OUTER_LOOP: do i=1,2
            INNER_LOOP: do j=1,2
              print *,d(i,j)
            enddo INNER_LOOP
          enddo OUTER_LOOP
          print *,"----------------------------------------"
          allocate(e(8),STAT=err)
          if(err/=0) STOP
          do a=1,8
            print *,e(a)
          enddo
          print *,"----------------------------------------"
          do a=1,8
            e(a)=a
          enddo
          do a=1,8
            print *,e(a)
          enddo
          print *,"----------------------------------------"
          deallocate(e)
          allocate(f(2,2),STAT=err)
          if(err/=0) STOP
          do i=1,2
            do j=1,2
              f(i,j)=(i-1)*2+j-1
            enddo
          enddo
          do i=1,2
            do j=1,2
              print *,f(i,j)
            enddo
          enddo
          deallocate(f)
          print *,"----------------------------------------"
          allocate(f(3,3),STAT=err)
          if(err/=0) STOP
          do i=1,3
            do j=1,3
              f(i,j)=(i-1)*2+j-1
            enddo
          enddo
          do i=1,3
            do j=1,3
              print *,f(i,j)
            enddo
          enddo
          deallocate(f)
          print *,"----------------------------------------"
          allocate(e(8),STAT=err)
          if(err/=0) STOP
          print *,SIZE(e)
          deallocate(e)
          print *,"----------------------------------------"
          allocate(e(4),STAT=err)
          if(err/=0) STOP
          print *,SIZE(e)
          deallocate(e)
          print *,"----------------------------------------"
          allocate(f(2,3),STAT=err)
          if(err/=0) STOP
          print *,SIZE(f)
          print *,SIZE(f,1)
          print *,SIZE(f,2)
          print *,"----------------------------------------"
          do i=1,SIZE(f,1)
            do j=1,SIZE(f,2)
              f(i,j)=(i-1)*SIZE(f,2)+j-1
            enddo
          enddo
          do i=1,SIZE(f,1)
            do j=1,SIZE(f,2)
              print *,f(i,j)
            enddo
          enddo
          deallocate(f)
          print *,"----------------------------------------"
          allocate(f(2,3),STAT=err)
          if(err/=0) STOP
          print *,SHAPE(f)
          print *,"----------------------------------------"
          print *,SUM(f)
          print *,"----------------------------------------"
          do i=1,SIZE(f,1)
            print *,SUM(f,i)
          enddo
          print *,"----------------------------------------"
          print *,MINVAL(f)
          print *,"----------------------------------------"
          do i=1,SIZE(f,1)
            print *,MINVAL(f,i)
          enddo
          print *,MINVAL(f,2)
          print *,"----------------------------------------"
          print *,MAXVAL(f)
          print *,"----------------------------------------"
          do i=1,SIZE(f,1)
            print *,MAXVAL(f,i)
          enddo
          print *,"----------------------------------------"
          print *,MAXLOC(f)
          print *,"----------------------------------------"
          do i=1,SIZE(f,1)
            print *,MAXLOC(f,i)
          enddo
          deallocate(f)
       end subroutine ftarr
