#include <unistd.h>
#include <stdalign.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <sys/wait.h>
#include <fcntl.h>

int main(int argc, char **argv) {
  int rc = fork();
  if (rc < 0) {
    fprintf(stderr, "FAILED\n");
    exit(1);
  } else if (rc == 0) { // sub-process
    close(STDOUT_FILENO);
    open("./p4.output", O_CREAT | O_WRONLY | O_TRUNC, S_IRWXU); // redirect like ">" opeator in cli
  } else {

  }
  return 0;
}