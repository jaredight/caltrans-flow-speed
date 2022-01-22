/*
jared wright
jaredwright217@gmail.com
*/

cd C:\Users\jaredmw2\Downloads
import delimited march_dummy.csv, clear

sum flow avgspeed
ds
rename post postcovid
sum

reg lnflowpl postcovid hour* county* lanes* fwy*
estimates store m1, title(ln flow per lane 2)


reg lnflowpl postcovid avgoccupancy avgspeed hour* county* lanes* fwy*
estimates store m2, title(ln flow per lane)

reg avgoccupancy lnflowpl postcovid avgspeed hour* county* lanes* fwy*
estimates store m3, title(avg occupancy)


reg avgspeed postcovid hour* county* lanes* fwy*
estimates store m4, title(avg speed)

estout m1 m2 m3, cells(b(star fmt(3)) se(par fmt(2))) 

estout m1 m2 m3 m4, cells(b(star fmt(3)) se(par fmt(2)))   ///
   legend label varlabels(_cons constant)               ///
   stats(r2, fmt(3) label(R-sqr))
   
   
   

