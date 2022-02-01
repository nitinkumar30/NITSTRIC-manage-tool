echo \<html\> \<body\>
echo \<center\>
echo \<h1\>Electricity bill management system \</h1\>
echo \<table\>
while read line; do
    echo \<tr\>
    for item in $line; do
        echo \<td\>$item\<\/td\>
    done
    echo \<\/tr\>
done
echo \<\/table\>
echo \</center\> \</body\> \</html\>

# this file converts txt file into proper html file