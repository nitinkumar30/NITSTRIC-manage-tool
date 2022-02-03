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

gst_no=$((1000000000 + RANDOM % 9999999999))
incharge="Arvind Singh"

echo $'\t\t'"$(tput setaf 5)-----------------------------------------" 
echo $'\t\t\t'"$(tput bold setaf 1)Electricity Bill Invoice"
echo $'\t\t'"$(tput setaf 5)-----------------------------------------"
echo $'\t\t\t'"$(tput setaf 2)GST_Invoice_No:"         $gst_no
echo $'\t\t\t'"$(tput setaf 2)Name:"                   $name
echo $'\t\t\t'"$(tput setaf 2)Date_and_Time:" $(date)
echo $'\t\t\t'"$(tput setaf 2)Meter_Number:"           $mno
echo $'\t\t\t'"$(tput setaf 2)Current_Month_reading:"  $cmr
echo $'\t\t\t'"$(tput setaf 2)Last_Month_reading:"     $lmr
echo $'\t\t\t'"$(tput setaf 2)Unit:"                   $unit
echo $'\t\t\t'"$(tput setaf 2)Total_Amount_to_be_paid:"      $charge
echo $'\t\t\t'"$(tput setaf 2)Due_date_is:" $(date --date='30 day')
echo $'\n\n\n\t\t\t'"$(tput setaf 2)Person_Incharge:"        ${incharge}
echo $'\t\t'"$(tput setaf 5)-----------------------------------------"


