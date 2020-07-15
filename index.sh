
#!/bin/bash -x

validateName(){
	userName=$1
	userNamePattern="^([A-Z][a-zA-Z]){3}$"
	match=0
	if [[ $userName =~ $userNamePattern ]]
	then
		match=1
	fi
	echo $match


}


validateEmail(){
	userEmail=$1
	userEmailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"
	match=0
	if [[ $userEmail =~ $userEmailPattern ]]
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

checkEmail(){

	validation=$1
	echo
	if [ $validation -eq 1 ]
	then
		echo "Entered Email is Valid"
	else
		echo "Entered Email is invalid"
	fi

}

validation=0
echo "Welcome to UC3 Email Validation"
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
checkEmail $validation
