/* A simple server in the internet domain using TCP */
#include <stdlib.h>
#include <string.h>       // For bzero()
#include <unistd.h>       // For close() and read()/write()
#include <netdb.h>        // For networking-related structures
#include <stdio.h>        // For printf() and perror()
#include <sys/types.h>    // For data types like socklen_t
#include <sys/socket.h>   // For socket programming functions
#include <netinet/in.h>   // For sockaddr_in structure

void error(const char *msg){
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno;
    socklen_t fromlen; //clilen is replaced with fromlen
    char buffer[256];
    struct sockaddr_in serv_addr, from_addr; //cli_addr is replaced
    int n;

    if (argc < 2) {
        fprintf(stderr, "ERROR, no port provided\n");
        exit(1);
    }

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");

    bzero((char *)&serv_addr, sizeof(serv_addr));
    portno = atoi(argv[1]);
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(portno);

    if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) 
        error("ERROR on binding");
    
    fromlen = sizeof(struct sockaddr_in);

    while(1){
        n = recvfrom(sockfd, buffer, 1024, 0, (struct sockaddr *)&from_addr, &fromlen);
        
        if (n < 0){
            error("recvfrom");
        }
        n = sendto(sockfd, "Got your message", 16, 0, (struct sockaddr *)&from_addr, fromlen);
        if(n < 0){
            error("sendto");
        }
        printf("Here is the message from client: %s\n",buffer);
    }

    // listen(sockfd, 5);
    // clilen = sizeof(cli_addr);
    // newsockfd = accept(sockfd, (struct sockaddr *)&cli_addr, &clilen);
    // if (newsockfd < 0) 
    //     error("ERROR on accept");

    // bzero(buffer, 256);
    // n = read(newsockfd, buffer, 255);
    // if (n <= 0) {
    //     error("ERROR reading from socket");
    // }

    buffer[n] = '\0'; // Null-terminate the received string
    printf("Here is the message: %s\n", buffer);

    // n = write(newsockfd, "I got your message", 18);
    // if (n < 0) {
    //     error("ERROR writing to socket");
    // }

    close(newsockfd);
    close(sockfd);
    return 0;
}

