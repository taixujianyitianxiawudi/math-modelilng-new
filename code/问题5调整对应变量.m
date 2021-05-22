@FOR(list(i):
    3 = d1+ d2 + @sum(c(j):
        @if(x(i,j) #ne# x0_1to111(i,j),
        c(j)=1,
        c(j)=0
        )
      )
)