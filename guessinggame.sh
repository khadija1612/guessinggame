count_files() {
    find . -maxdepth 1 -type f | wc -l
}
is_number() {
    [[ "$1" =~ ^[0-9]+$ ]]
}
answer=$(count_files)
echo "How many files are in the current directory?"
read -r guess
while true; do
    if ! is_number "$guess"; then
        echo "Please enter a whole number."
    elif [ "$guess" -eq "$answer" ]; then
        echo "Congratulations! You guessed correctly."
        break
    elif [ "$guess" -lt "$answer" ]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
    read -r guess
done
