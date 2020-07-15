
#!/bin/bash -x

validateName(){
	userName=$1
	userNamePattern="^[A-Z][a-zA-Z]{2,}$"
	match=0
	if [[ $userName =~ $userNamePattern ]]
	then
		match=1
	fi
	echo $match


}


validateEmail(){
	userEmail=$1
	userEmailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+\.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
	match=0
	if [[ $userEmail =~ $userEmailPattern ]]
	then
		match=1
	fi
	echo $match


}


validateNumber(){
	userNumber=$@
	userNumberPattern="^[0-9]{2}[ ][0-9]{10}$"
	match=0
	if [[ $userNumber =~ $userNumberPattern ]]
	then
		match=1
	fi
	echo $match


}


validatePassword(){
	userPassword=$@
	userPasswordPattern="^[0-9a-zA-Z]{8,}$"
	match=0
	if [[ $userPassword =~ $userPasswordPattern ]] && [[ $userPassword == *[A-Z]* ]] && [[ $userPassword == *[0-9]* ]]
	then
		match=1
	fi
	echo $match


}

checkName(){

	validation=$1
	echo
	if [ $validation -eq 1 ]
	then
		echo "Entered Name is Valid"
	else
		echo "Entered Name is invalid must have 3 characters and start with Capital"
	fi

}


checkVariable(){

	validation=$1
	name=$2
	echo
	if [ $validation -eq 1 ]
	then
		echo "Entered $2 is Valid"
	else
		echo "Entered $2 is invalid"
	fi

}

checkNumber(){

	validation=$1
	echo
	if [ $validation -eq 1 ]
	then
		echo "Entered Number is Valid"
	else
		echo -e "Entered Number is invalid please put country code followed by space \n and 10 digit phone number"
	fi

}

echo "Welcome to UC6 Check for Upper Case in Password"

validation=0
read -p "Enter UserName " userName
validation="$( validateName $userName )"
checkName $validation



validation=0
echo
read -p "Enter LastName " lastName
validation="$( validateName $lastName )"
checkName $validation


validation=0
echo
read -p "Enter Email " userEmail
validation="$( validateEmail $userEmail )"
checkVariable $validation Email


validation=0
echo
read -p "Enter Mobile Number " userNumber
validation="$( validateNumber $userNumber )"
checkNumber $validation


validation=0
echo
read -p "Enter Password (min 8 chars) " userPassword
validation="$( validatePassword $userPassword )"
checkVariable $validation Password
