
echo \<html\>\<head\>
echo \<link rel="stylesheet" type="text/css" href="style.css" media="screen"\>
echo \</head\>\<body\> \<center\>
echo \<h1\>Electricity Bill Management System \</h1\>
echo \<h2\>Your Invoice \</h2\>
echo \<table\>
# echo \<tr\> \<td\> \</td\> \<td class="title" \>Your Invoice \</td\> \</tr\>
while read line; do
    echo \<tr\>
    for item in $line; do
        echo \<td\>$item\<\/td\>
    done
    echo \<\/tr\>
done
echo \<br /\>\<br /\> \<\/table\> \<footer\> Coded by Black Eagle with ❤️ \</center\>\</footer\> \</body\> \</html\>
