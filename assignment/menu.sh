# Menu below

while true
do
    echo "Menu"
    echo "1. List files"    
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"

    read -p "Please select an option: " option

    case $option in
    1)  
        ls -l ;;    # Display list files

    2)
        df -h ;;    # Show free disk space

    3)
        echo $PATH ;;   # Show system path

    4)
        history ;;  # Display command history

    5)
        # This option is for backing a file up, asks a user to back a file up
        read -p "Enter the directory/folder path you want backed up: " folderPath

        chmod +r $folderPath    # Copies the directory
        cp -r $folderPath BackupFolder # Creates a Backup folder where the content of backup is copied into
        ls BackupFolder

        echo "Backup has been completed." 
    
        echo " "
        tree BackupFolder   # Show the backed up folder and the contents within
        echo " " ;;

    6)
        echo "You have left." 
        exit ;; # Exit

    *)
        echo " " 
        echo "Please select a valid option" 
        echo " " ;; # Default case if a user selects an invalid option

    esac
    
done

