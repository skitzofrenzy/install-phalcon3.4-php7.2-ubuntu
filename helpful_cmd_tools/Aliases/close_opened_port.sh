# Function to close a specified port
# Usage: closeport <port_number>
function closeport {
    # Check if port number argument is provided
    if [[ $# -eq 0 ]]; then
        echo "Error: Port number is required."
        echo "Usage: closeport <port_number>"
        return 1
    fi

    # Get the port number argument
    local port_number=$1

    # Check if port is open and kill the process using it
    if lsof -i :$port_number > /dev/null 2>&1; then
        echo "Port $port_number is open. Attempting to close it..."

        # Kill the process using the port
        sudo kill $(sudo lsof -t -i :$port_number) > /dev/null 2>&1

        # Check if port is still open and print appropriate message
        if lsof -i :$port_number > /dev/null 2>&1; then
            echo "Failed to close port $port_number. Please try again."
        else
            echo "Port $port_number has been successfully closed."
        fi
    else
        echo "Port $port_number is already closed."
    fi
}
