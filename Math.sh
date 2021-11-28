function homeScreen () {
	
printf "\033c"
cat << "EOF"
 _______  _______ _________            _______  _______  _______ _________ _______ _________
(       )(  ___  )\__   __/|\     /|  (  ____ \(  ____ \(  ____ )\__   __/(  ____ )\__   __/
| () () || (   ) |   ) (   | )   ( |  | (    \/| (    \/| (    )|   ) (   | (    )|   ) (   
| || || || (___) |   | |   | (___) |  | (_____ | |      | (____)|   | |   | (____)|   | |   
| |(_)| ||  ___  |   | |   |  ___  |  (_____  )| |      |     __)   | |   |  _____)   | |   
| |   | || (   ) |   | |   | (   ) |        ) || |      | (\ (      | |   | (         | |   
| )   ( || )   ( |   | |   | )   ( |  /\____) || (____/\| ) \ \_____) (___| )         | |   
|/     \||/     \|   )_(   |/     \|  \_______)(_______/|/   \__/\_______/|/          )_(                                                                                           
EOF
echo "$(tput setaf 4)[v 1.0.0]$(tput sgr0)"
echo "$(tput sgr0)------------------------"
echo "[Simple math script created by Nicolas Solley]"
echo "[Check out my github $(tput setaf 4)https://github.com/NicolasSolley]$(tput sgr0)"
echo
echo "------------------------"
echo "$(tput bold)SELECT OPTION BY NUMBER$(tput sgr0)"
echo "------------------------"

echo
echo $(tput setaf 15 & tput bold)MATH TOOLS:
echo $(tput setaf 55 & tput bold)[1] Hello World'       '[2] Basic Calculator
echo
echo $(tput setaf 19 & tput bold)[3] Square Root'       '[4] Area of Triangle
echo
echo $(tput setaf 55 & tput bold)[5] Swap Variables'    '[6] Kilo to Miles
echo
echo $(tput setaf 19 & tput bold)[7] Far -'>' Cel'        '[8] Hello World
echo
echo $(tput setaf 55 & tput bold)[9] Hello World'       '[10] Hello World 
echo $(tput sgr0)
echo
read -p "$(tput bold)Select Choice : " homeChoice 



case "$homeChoice" in
	
	1)
		printf "\033c"
		echo "Hello World!"
		echo
		echo
		read -rsn1 -p"$(tput bold)Press any key to continue" variable;homeScreen
		 
	
			          ;;
2)
	printf "\033c"
	echo "$(tput bold)Basic Operations Calculator"
	echo
	read -p "Enter first integer : " num1
	read -p "Enter operator : " operator
	read -p "Enter second integer : " num2
	echo
	if [ "$operator" == "+" ]; then
		sum=$(( $num1 + $num2 ))
		echo "$(tput setaf 1 & tput bold)The sum of the two integers is : $sum"
		echo
		echo
		read -rsn1 -p"$(tput sgr0 & tput bold)Press any key to continue" variable;homeScreen
	elif [ "$operator" == "-" ]; then
		sum=$(( $num1 - $num2 ))
		echo "$(tput setaf 1 & tput bold)The difference of the two integers is : $sum"
		echo
		echo
		read -rsn1 -p"$(tput sgr0 & tput bold)Press any key to continue" variable;homeScreen
	fi
		
	;;
	

3)
	printf "\033c"
	echo "$(tput bold)Square Root Calculator"
	echo
	read -p "Enter integer to perform square root calculation on : " num1
	square_root=`echo "scale=4; sqrt($num1)" | bc` 
	echo
	echo "$(tput setaf 1)The square root of $num1 is $square_root$(tput sgr0)"
	echo
	echo
	read -rsn1 -p "Press any key to continue" variable;homeScreen
	;;
	
4)
	printf "\033c"
	echo "$(tput bold)Calculate the Area of a Triangle"
	echo
	read -p "Enter the first side: " a
	read -p "Enter the second side: " b
	read -p "Enter the third side: " c
	s=`echo "scale=4; ($a+$b+$c)/2" | bc`
	area=`echo "scale=4; sqrt($s*($s-$a)*($s-$b)*($s-$c))" | bc`
	echo
	echo "$(tput setaf 1 & tput bold)The area of the triangle is $area$(tput sgr0)"
	echo
	echo
	read -rsn1 -p "Press any key to continue" variable;homeScreen
	;;
	
5)
	printf "\033c"
	echo "$(tput bold)Variable Swapper"
	echo
	echo "x = 5"
	echo "y = 10"
	x=5
	y=10
	temp=0
	echo
	temp=$x
	x=$y
	y=$temp
	echo "After Swap:"
	echo "x = $x"
	echo "y = $y"
	echo
	echo
	read -rsn1 -p "Press any key to continue" variable;homeScreen
	
	;;
	
6)
	printf "\033c"
	echo "$(tput bold)Kilometers to Miles Converter"
	echo
	read -p "Enter amount in kilometers : " kilo
	echo "1 Kilometer is equal to 0.621371 Miles"
	miles=0.621371
	milesCount="$(echo "$kilo * $miles" | bc)"
	echo "$milesCount"
	echo
	read -rsn1 -p "Press any key to continue" variable;homeScreen
	
	;;
	
7)
	printf "\033c"
	echo "$(tput bold)Farenheit to Celcius Converter"
	echo
	read -p "Enter degrees in farenheit : " farenheit
	
	echo 
	echo "($farenheit - 32) x .5556 = Temperature in Celcius"
	calculate="$(echo "($farenheit - 32) * .5552" | bc)"
	echo "$calculate"
	echo
	echo
	
	read -rsn1 -p "Press any key to continue" variable;homeScreen
	;;
esac
	

		 
	
}


homeScreen