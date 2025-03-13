#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

	printf("PID: %i\n", pid);

    if (pid == 0) { // Child process
        execlp("ls", "ls", "-l", NULL); // Execute the 'ls -l' command
        perror("execlp"); // Print error if exec fails
        exit(1);
    } else if (pid > 0) { // Parent process
        wait(NULL); // Wait for the child process to finish
		printf("PID parent %d\n", pid);
        printf("Child process finished.\n");
    } else { // Fork failed
        perror("fork");
        return 1;
    }

    return 0;
}
