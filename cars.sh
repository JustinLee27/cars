#! /bin/bash
# cars
# Justin Lee

while [ "$NUM" != 3 ]
do
	echo "[1] Enter a new car"
	echo "[2] Display the list of cars"
	echo "[3] Quit and exit the program"
	echo "Please type the number of the option you wish to select: "
	read -r NUM
	 case "$NUM" in
		 "1") 
			 echo "Enter the year of the car: "
			 read -r YEAR
			 echo "Enter the make of the car: "
			 read -r MAKE
			 echo "Enter the model of the car: "
			 read -r MODEL
			 NEW="${YEAR}:${MAKE}:${MODEL}"
			 echo  "$NEW" >> My_old_cars.txt
			 ;;
		 "2")
	 		 sort  My_old_cars.txt;;
		 "3")
			 echo "Goodbye.";;
	 	 *)
	   		 echo "Invalid option. Please try again.";;
	 esac
done
