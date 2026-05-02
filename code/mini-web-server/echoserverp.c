#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/unistd.h>
#include <sys/types.h>
#include <sys/socket.h>

void sigchld_handler(int sig) {
  while (waitpid(-1, 0, WNOHANG) > 0);
  return;
}

int main(int argc, char **argv) {
  int listenfd, connfd;
  socklen_t clientlen;
  struct sockaddr_storage clientaddr;

  if (argc != 2) {
    fprintf(stderr, "usage: %s <port>", argv[0]);
    exit(0);
  }

  signal(SIGCHLD, sigchld_handler);

  exit(0);
}