# This Makefile sets up and cleans up the Linux environment.

# Define variables for script files
LINUX_SCRIPT = ./bin/linux.sh
CLEANUP_SCRIPT = ./bin/cleanup.sh

# Define targets and their prerequisites
linux: clean
	 $(LINUX_SCRIPT)
    

clean:
	 $(CLEANUP_SCRIPT)
    


