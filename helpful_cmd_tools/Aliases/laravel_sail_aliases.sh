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



### Laravel Sail shortcodes in main project dir ###

# Start all Sail containers
alias sailup='./vendor/bin/sail up'

# Stop and remove all Sail containers
alias saildown='./vendor/bin/sail down'

# Run an Artisan command in a new container
alias sailartisan='./vendor/bin/sail artisan'

# Run a Composer command in a new container
alias sailcomposer='./vendor/bin/sail composer'

# Run an NPM command in a new container
alias sailnpm='./vendor/bin/sail npm'

# Open an interactive Tinker shell in a new container
alias sailtinker='./vendor/bin/sail tinker'

# Open a Bash shell in a new container
alias sailshell='./vendor/bin/sail shell'

# Show the logs for all the containers defined in your Sail configuration file
alias saillogs='./vendor/bin/sail logs'

# Stop and remove all the containers and volumes defined in your Sail configuration file
alias sailpurge='./vendor/bin/sail down -volumes'

alias saildir="./vendor/bin/sail"

alias sailhelp='
echo "Sail commands:" && 
echo "- sailup: Start all Sail containers" && 
echo "- saildown: Stop and remove all Sail containers" && 
echo "- sailartisan: Run an Artisan command in a new container" && 
echo "- sailcomposer: Run a Composer command in a new container" && 
echo "- sailnpm: Run an NPM command in a new container" && 
echo "- sailtinker: Open an interactive Tinker shell in a new container" && 
echo "- sailshell: Open a Bash shell in a new container" && 
echo "- saillogs: Show the logs for all the containers defined in your Sail configuration file" && 
echo "- sailpurge: Stop and remove all the containers and volumes defined in your Sail configuration file" && 
echo "- saildir: Alias to access Sail binary"'
####




### Laravel aliases ###

# Start the development server
alias lserv='php artisan serve'

# Generate a new controller class
alias lctrl='php artisan make:controller'

# Generate a new model class
alias lmod='php artisan make:model'

# Generate a new migration file
alias lmig='php artisan make:migration'

# Run any pending database migrations
alias lrun='php artisan migrate'

# Run any database seeders
alias lseed='php artisan db:seed'

# Open an interactive shell to interact with models and database
alias ltinker='php artisan tinker'

# Install application dependencies with Composer
alias lcomp='composer install'

# Install application front-end dependencies with NPM
alias lnpm='npm install'

# Compile front-end assets for development
alias ldev='npm run dev'

# Compile front-end assets for production
alias lprod='npm run prod'

# shows all aliases
alias lhelp='
echo "lserv - Start the development server"; \
echo "lctrl - Generate a new controller class"; \
echo "lmod - Generate a new model class"; \
echo "lmig - Generate a new migration file"; \
echo "lrun - Run any pending database migrations"; \
echo "lseed - Run any database seeders"; \
echo "ltinker - Open an interactive shell to interact with models and database"; \
echo "lcomp - Install application dependencies with Composer"; \
echo "lnpm - Install application front-end dependencies with NPM"; \
echo "ldev - Compile front-end assets for development"; \
echo "lprod - Compile front-end assets for production";'
###


# This doc is copyable