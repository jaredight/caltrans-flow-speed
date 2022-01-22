cd
cd C:\Users\jaredmw2\Downloads
import excel peak_traffic.xls, firstrow clear
sum K
rename K K_am
rename Kpm K_pm
twoway scatter K_am K_pm
graph save "Graph" "C:\Users\jaredmw2\Downloads\Kam Kpm.gph", replace
reg K_am K_pm