#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <netdb.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>


void error(const char *msg) //Function to handle errors
{
    perror(msg); // Print the error message
    exit(0);     // Exit the program
}

int main(int argc, char *argv[])
{
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;
    char buffer[256];

    if (argc < 3) { //To check the correct number of arguments
        fprintf(stderr, "Usage: %s hostname port\n", argv[0]);
        exit(0);
    }

    portno = atoi(argv[2]); //Converts the port number from STRING TO INTEGER

    sockfd = socket(AF_INET, SOCK_DGRAM, 0); //Creating a UDP SOCKET
    if (sockfd < 0) 
        error("ERROR opening socket");
        
    server = gethostbyname(argv[1]); // Resolve the server's hostname

    if (server == NULL) {
        fprintf(stderr, "ERROR, no such host\n");
        exit(0);
    }

    bzero((char *)&serv_addr, sizeof(serv_addr)); // Set up the server address structure
    
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
          (char *)&serv_addr.sin_addr.s_addr, 
          server->h_length);
    serv_addr.sin_port = htons(portno);

    //Prompt the user to enter a message
    printf("Please enter the message: ");
    bzero(buffer, 256);
    fgets(buffer, 255, stdin);
    buffer[strcspn(buffer, "\n")] = '\0'; //Remove trailing newline

    // Send the message to the server
    n = sendto(sockfd, buffer, strlen(buffer), 0, 
               (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    if (n < 0) {
        error("ERROR sending to socket");
    }

    socklen_t serv_len = sizeof(serv_addr); // Receive the server's response
    bzero(buffer, 256);
    n = recvfrom(sockfd, buffer, 255, 0, 
                 (struct sockaddr *)&serv_addr, &serv_len);
    if (n < 0) {
        error("ERROR receiving from socket");
    }
    buffer[n] = '\0'; //Null-terminate the received string

    //Print the server's response
    printf("Server response: %s\n", buffer);

    // Close the socket
    close(sockfd);
    return 0;
}