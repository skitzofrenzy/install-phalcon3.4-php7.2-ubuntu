# Stolen from skitzofrenzy but with good cause.

# A Bash alias is a custom shorthand command that can be created in 
# the Bash shell to shorten the syntax of commonly used commands or 
# create a shortcut to a longer command or set of commands. They are 
# defined in the user's ~/.bashrc file or in a dedicated aliases file 
# and are essentially a way to make it easier and quicker to execute
# commands in the terminal.


# How to Add Aliases Definitions
#
#
# Navigate to your home directory
# CMD here: cd ~

# Create a .bashrc file if it doesn't exist
# CMD here: touch .bashrc

# Open the .bashrc file in a text editor
# CMD here: nano .bashrc

# Scroll to the bottom of the file and add the aliases you want to use
# You can copy and paste the aliases from the snippet above

# Save the file by pressing Ctrl+X, then Y, then Enter

# Create a .bash_aliases file if you want to use a dedicated aliases file
# CMD here: touch .bash_aliases

# Open the .bash_aliases file in a text editor
# CMD here: nano .bash_aliases

# Copy and paste the aliases from the snippet above into the .bash_aliases file

# Save the file by pressing Ctrl+X, then Y, then Enter

# In your .bashrc file, add the following lines to check if the .bash_aliases file exists and, if it does, load it:
## CMD starts here: 
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
## CMD end (dont forget to remove comments for the mulitline code snippet)

# Save the .bashrc file by pressing Ctrl+X, then Y, then Enter

# Activate the changes by running source .bashrc or opening a new terminal window

# If you added the aliases to the .bash_aliases file, source that file as well to make the aliases available


# Switch to php version of choice
switch-php-version() {
    local php_path="/usr/bin/php"
    local php_versions=($(ls -1d ${php_path}* | grep -v "dbg\|ize\|config"))
    local version_count=${#php_versions[@]}

    echo "Available PHP versions:"
    for ((i=0; i<$version_count; i++)); do
        echo "[$i] $(basename ${php_versions[$i]})"
    done

    read -p "Enter the number corresponding to the PHP version you want to switch to: " version_num

    if (( $version_num >= 0 && $version_num < $version_count )); then
        sudo update-alternatives --set php ${php_versions[$version_num]}
    
        # Restart Apache or Nginx if installed
        if [[ -x "$(command -v apache2)" ]]; then
            sudo systemctl restart apache2
            echo "apache2 reset successful"
        elif [[ -x "$(command -v nginx)" ]]; then
            sudo systemctl restart nginx
            echo "nginx reset successful"
        fi
        php -v
    else
        echo "Invalid version number."
    fi
}
# This doc is copyable