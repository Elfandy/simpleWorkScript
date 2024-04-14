#!/usr/bin/bash
echo "Starting the service"
checkfile=$( ls /var/www/html | grep talabi | wc -l ) 

if [ $checkfile -lt 1 ]; then
echo "Creating Talabi app api"
mkdir /var/www/html/talabi
fi

checkfile2=$(ls /var/www/html/talabi | grep Catagories| wc -l) 
if [ $checkfile2 -lt 1 ]; then
echo "Creating Talabi Catagory api folder"
mkdir /var/www/html/talabi/Catagories
fi
checkfile3=$(ls /var/www/html/talabi | grep Restaurant | wc -l)
if [ $checkfile3 -lt 1 ]; then
echo "Creating Talabi Restaurant api folder"
mkdir /var/www/html/talabi/Restaurant
fi
checkfile4=$(ls /var/www/html/talabi | grep User | wc -l )
if [ $checkfile4 -lt 1 ]; then
echo "Creating Talabi User Folder"
 mkdir /var/www/html/talabi/User
fi

checkfile5=$(ls /var/www/html/talabi | grep Menu | wc -l )
if [ $checkfile5 -lt 1 ]; then
echo "Creating Talabi Menu Folder"
 mkdir /var/www/html/talabi/Menu
fi

checkfile6=$(ls /var/www/html/talabi | grep images | wc -l)
if [ $checkfile6 -lt 1 ]; then
echo "Creating Talabi Images Folder"
 mkdir /var/www/html/talabi/images
fi



##### Catagory Space for adding all json files in it #######
checkJson=$(ls /var/www/html/talabi/Catagories | grep "getCatagories.json" | wc -l)
if [  $checkJson  -lt 1 ]; then
echo "Creating getCatagories api" 
touch getCatagories.json
echo  '[{"id": 1,"name": "سندوتشات","description": "تشكيلة من ألذ أنواع السندوتشات الشهية والمعدة بإتقان." },{"id": 2,"name": "وجبات","description": "الأطباق الرئيسية المتكاملة لتلبيسة شهيتك."},{"id": 3,"name": "عصائر","description": "مشروبات باردة ومنعشة لإطفاء ظأك." },{"id": 4,"name": "تحلية","description": "حلويات لذيذة لإنهاء وجبتك بطعمٍ لا يُنسى."},{"id": 5,"name": "بيتزا","description": "استمتع بتشكيلة رائعة من البيتزا الشهية." },{"id": 6,"name": "صحي","description": "خيارات صحية ومغذية لتتناول وجبة خفيفة أو كاملة."},{"id": 7,"name": "خاصة","description": "عروض خاصة وأطباق مميزة لفترة محدودة." },{"id": 8,"name": "مقبلات","description": "باقة من المقبلات الشهية لبدء وجبتك بأشهى طعم." },{"id": 9,"name": "سلطة","description": "خيارات متنوعة من السلطات الطازجة والمغذية." },{"id": 10, "name": "لحم","description": "أشهى الأطباق التي تحتفي باللحوم." },{"id": 11,"name": "عصائر ساخنة","description": "مشروبات ساخنة كالقهوة والشاي وغيرها." },{"id": 12,"name": "شعبي","description": "الأطباق الأكثر طلبًا والأكثر شهرة لدينا." }]' > /var/www/html/talabi/Catagories/getCatagories.json
echo "Created getCatagories API successfully"
fi



##### Restaurant Space for adding all json files in it #######


checkJson=$(ls /var/www/html/talabi/Restaurant | grep "getAllRestuarantsData.json" | wc -l)
if [ $checkJson  -lt 1 ]; then
echo "Creating getAllRestuarantsData api"
touch getAllRestuarantsData.json
echo '[{"id": "res123","name": "شنابو","size": 2,"image": "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 90,"rating": 4.5,"isClosed": false},{"id": "res124","name": "العمو","size": 2,"image": "https://images.unsplash.com/photo-1552566626-52f8b828add9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 25,"rating": 4.9,"isClosed": true},{"id": "res125","name": "موتشي","size": 2,"image": "https://images.unsplash.com/photo-1593940702988-5ab40a1913d3?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D0","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 36,"rating": 2.5,"isClosed": false},{"id": "res126","name": "كباب زناتة","size": 2,"image": "", "location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 120,"rating": 3,"isClosed": true},{"id": "res127","name": "قصر الوالي","size": 2,"image": "https://images.unsplash.com/photo-1510238890104-d15a38f787b6?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 45,"rating": 5,"isClosed": false},{"id": "res128","name": "فتوش","size": 2,"image": "https://images.unsplash.com/photo-1546195643-70f48f9c5b87?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 55,"rating": 1.2,"isClosed": false},{"id": "res129","name": "كودو","size": 2,"image": "https://images.unsplash.com/photo-1521017432531-fbd92d768814?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","location": {"lat": 32.8336782,"lang": 13.0677748},"cuisine": 1,"eta": 62,"rating": 0,"isClosed": false}]' > /var/www/html/talabi/Restaurant/getAllRestuarantsData.json

echo "Created getAllRestuarantsData API successfully"
fi




























##### Running the apache services and printing the ip address of this current device#######


echo "Starting Apache2 service..."
apacheTester=$(ps aux | grep apache2 | grep www-data | wc -l)

if [ $apacheTester -gt 1 ];
then

sudo service apache2 start
echo "Apache2 service started Successfully"

else 
echo "Apache2 Service is already running"
fi

echo "Note: If you want to close Apache service use: service apache2 stop"



##### Getting the current ip adderess of this device #######

echo "Getting the local ip address of this device"

ipAddr=$(hostname -I | awk '{print $1}' )

echo "your ip address is : $ipAddr"


