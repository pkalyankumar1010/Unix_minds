Help()
{
	# Display Help
	echo "Usage of the function"
	echo 
	echo "function -f first_name -l last_name -h"
	echo "-h for help option"
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
