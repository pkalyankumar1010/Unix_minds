Help()
{
	# Display Help
	echo "Prints full name by taking arguments"
	echo 
	echo "Syntax :function [-h|f|l]"
	echo 
	echo "options:"
	echo "h		Prints the help"
	echo "f		takes first name"
	echo "l		takes last name"
}


#Get or Read the options
# options should be :h:f:l: not like h:f:l becasue they will not work but
# if we want to give argument to a option option should be like ":f:"
# if we dont want to give a argument , if we have only option option should be like ":h"
while getopts ":f:l:h" option; do      
	case $option in
		h) #display help
			Help
			exit;;
		f) #Enter the first name
			echo "First name function"
			first_name=$OPTARG;;
		l) #Enter the last name
			echo "Last name function"
			last_name=$OPTARG;;
		\?) #Invalid option
			echo "Error :Invalid option"
			exit;;
	esac
done
echo "hello $first_name $last_name"
