#include <stdlib.h>       // For exit, atoi, etc.
#include <string.h>       // For bzero and string operations
#include <unistd.h>       // For close, fork, etc.
#include <netdb.h>        // For hostent and networking functions
#include <stdio.h>        // For printf, perror, etc.
#include <sys/types.h>    // For socket data types
#include <sys/socket.h>   // For socket functions
#include <netinet/in.h>   // For sockaddr_in and related structures
#include <signal.h>       // For signal handling
#include <errno.h>        // For errno variable
#include <sys/wait.h>     // For waitpid

// Function to handle errors and terminate the program
void error(const char *msg) {
    perror(msg); // Print error message to stderr
    exit(1);     // Exit the program with a failure code
}

// Function to handle client communication
void dostuff(int sockfd) {
    char buffer[256]; // Buffer to store the client's message
    int n;

    bzero(buffer, 256);             // Clear the buffer
    n = read(sockfd, buffer, 255);  // Read data from the client
    if (n < 0) {
        error("ERROR reading from socket"); // Handle read errors
    }

    buffer[n] = '\0'; // Null-terminate the received string
    printf("Here is the message: %s\n", buffer); // Print the client's message

    // Send acknowledgment to the client
    n = write(sockfd, "I got your message", 18);
    if (n < 0) {
        error("ERROR writing to socket"); // Handle write errors
    }

    close(sockfd); // Close the client socket
}

// Signal handler for SIGCHLD to clean up zombie processes
void sigchld_handler(int signo) {
    // Reap all terminated child processes without blocking
    while (waitpid(-1, NULL, WNOHANG) > 0);
}

int main(int argc, char *argv[]) {
    int sockfd, newsockfd, portno, pid;    // Socket file descriptors and process ID
    socklen_t clilen;                      // Length of the client address structure
    struct sockaddr_in serv_addr, cli_addr; // Server and client address structures

    // Ensure a port number is provided as a command-line argument
    if (argc < 2) {
        fprintf(stderr, "ERROR, no port provided\n");
        exit(1);
    }

    // Create a socket: IPv4, stream socket, TCP
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        error("ERROR opening socket"); // Handle socket creation errors
    }

    // Initialize the server address structure
    bzero((char *)&serv_addr, sizeof(serv_addr)); // Clear the structure
    portno = atoi(argv[1]);                      // Convert port number from string to integer
    serv_addr.sin_family = AF_INET;              // Set address family to IPv4
    serv_addr.sin_addr.s_addr = INADDR_ANY;      // Accept connections on any network interface
    serv_addr.sin_port = htons(portno);          // Convert port number to network byte order

    // Bind the socket to the specified address and port
    if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        error("ERROR on binding"); // Handle binding errors
    }

    // Start listening for incoming connections
    listen(sockfd, 5); // Allow a maximum of 5 pending connections in the queue
    clilen = sizeof(cli_addr);

    // Set up the SIGCHLD signal handler to prevent zombies
    struct sigaction sa;
    sa.sa_handler = sigchld_handler;   // Set the signal handler
    sa.sa_flags = SA_RESTART | SA_NOCLDSTOP; // Restart interrupted system calls
    sigaction(SIGCHLD, &sa, NULL);     // Register the signal handler

    printf("Server started. Listening on port %d...\n", portno);

    // Main loop to accept and handle client connections
    while (1) {
        // Accept a new client connection
        newsockfd = accept(sockfd, (struct sockaddr *)&cli_addr, &clilen);
        if (newsockfd < 0) {
            if (errno == EINTR) {
                // Retry if accept was interrupted by a signal
                continue;
            } else {
                error("ERROR on accept"); // Handle other accept errors
            }
        }

        // Fork a new process to handle the client
        pid = fork();
        if (pid < 0) {
            error("ERROR on fork"); // Handle fork errors
        }

        if (pid == 0) {
            // Child process: Handle the client connection
            close(sockfd);       // Close the listening socket in the child
            dostuff(newsockfd);  // Communicate with the client
            exit(0);             // Exit the child process after handling the client
        } else {
            // Parent process: Continue to accept new connections
            close(newsockfd); // Close the client socket in the parent
        }
    }

    // Close the listening socket (unreachable in this implementation)
    close(sockfd);
    return 0;
}