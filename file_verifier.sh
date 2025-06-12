
# Prompt for filename until a valid one is provided
while true; do
    read -p "Enter a filename: " filename

    # Check if the file exists and is a regular file
    if [[ -f "$filename" ]]; then
        echo "File '$filename' found."
        break
    else
        echo "File does not exist. Please try again."
    fi
done

