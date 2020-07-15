
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


echo "Welcome to UC1 Validate Name"
read -p "Enter UserName " userName
validation="$( validateName $userName )"

if [ $validation -eq 1 ]
then
	echo "User Name is Valid"
else
	echo "User Name invalid must have 3 characters and start with Capital"
fi

