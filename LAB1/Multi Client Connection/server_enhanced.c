#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <netdb.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/wait.h> // For waitpid()

void error(const char *msg) //This function handles error messages & exits the program
{
    perror(msg); //prints the error messages
    exit(1);
}

// This function is used to handle the client connection (as advised in the Lab)
void dostuff(int sockfd)
{
    char buffer[256]; //Buffer to store the message from the client
    int n;

    bzero(buffer, 256); //clears the buffer
    n = read(sockfd, buffer, 255); //Read the message from the client
    if (n < 0) error("ERROR reading from socket");

    buffer[n] = '\0'; // Null-terminate the Received string
    printf("Here is the message: %s\n", buffer);

    //Sending Acknowledgement to Client
    n = write(sockfd, "I got your message", 18);
    if (n < 0) error("ERROR writing to socket");

    close(sockfd); // Closing client socket
}

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno, pid;
    socklen_t clilen;
    struct sockaddr_in serv_addr, cli_addr;

    if (argc < 2) {
        fprintf(stderr, "ERROR, No port provided\n");
        exit(1);
    }

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) error("ERROR opening socket");

    //Initializing server address structure
    bzero((char *)&serv_addr, sizeof(serv_addr));
    portno = atoi(argv[1]); //converts port no from STRING to INTEGER
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(portno);

    //binding the socket to specified port and address
    if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) 
        error("ERROR on Binding");

    //Listen for incoming connections
    listen(sockfd, 5);
    clilen = sizeof(cli_addr);

    printf("Server has been booted up. Server is Listening on Port %d...\n", portno);

    //This is the loop explained in the lab to accept & handle client connections
    while (1) {
        newsockfd = accept(sockfd, (struct sockaddr *)&cli_addr, &clilen);
        if (newsockfd < 0) {
            error("ERROR on accept");
            }

        //Fork() for a new process to handle the client
        pid = fork();
        if (pid < 0) error("ERROR on fork"); //Handling the fork errors

        if (pid == 0) {
            // Child process to handle client connection
            close(sockfd); // Close the listening socket in the child
            dostuff(newsockfd); //Used for communicating with the client
            exit(0);
        } else {
            // Parent process used to continue accepting new connections
            close(newsockfd); // Close the client socket in the parent
        }
    }

    close(sockfd); // Close the server socket
    return 0;
}
