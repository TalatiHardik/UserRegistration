
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

validation=0
echo "Welcome to UC2 Validate Last Name"
read -p "Enter UserName " userName
validation="$( validateName $userName )"
checkName $validation



validation=0
echo
read -p "Enter LastName " lastName
validation="$( validateName $lastName )"
checkName $validation
