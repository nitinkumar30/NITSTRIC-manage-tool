#!/bin/sh

echo $'\t\t'-----------------------------------------
echo $'\t\t'Electricity Billing System by Black Eagle
echo $'\t\t'----------------------------------------- 
echo "Enter the Name:"
read name 
echo "Enter the Meter number:"
read mno 
echo "Enter the current month reading"
read cmr 
echo "Enter the last month reading"
read lmr 
unit=$(expr $cmr - $lmr) 
if [ $unit -eq 0 ] 
then 
 charge=40 
elif [ $unit -gt 0 ] && [ $unit -le 100 ]
then 
 charge=$(expr $unit \* 3) 
elif [ $unit -gt 100 ] && [ $unit -le 300 ] 
then 
 charge=$(expr 100 \* 3 + $unit - 100) 
elif [ $unit -gt 300 ] && [ $unit -le 500 ] 
then 
 charge=$(expr $unit \* 3 + 200 \* 5 + $unit - 300) 
elif [ $unit -gt 500 ] 
then 
 charge=$(expr 1400 + $unit - 400) 
fi 
echo $'\t\t'-----------------------------------------  
echo $'\t\t\t'Electricity Billing System
echo $'\t\t'----------------------------------------- 
echo $'\t\t\t'Name                   $name
echo $'\t\t\t'Meter_Number           $mno
echo $'\t\t\t'Current_Month_reading  $cmr
echo $'\t\t\t'Last_Month_reading     $lmr
echo $'\t\t\t'Unit                   $unit
echo $'\t\t\t'Charge                 $charge
echo $'\t\t'----------------------------------------- 

