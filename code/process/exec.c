#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char **argv) {
  printf("Hello, world (pid: %d)\n", (int)getpid());

  int rc = fork();
  if (rc < 0) {
    fprintf(stderr, "fork failed\n");
    exit(1);
  } else if (rc == 0) {
    printf("Hello, I'm child process!");
    char *myargs[3];
    myargs[0] = strdup("./print");
    myargs[1] = NULL;
    execvp(myargs[0], myargs);
    printf("This should never be printed!\n");
  } else {
    int wc = wait(NULL);
    printf("hello, I am parent process of %d (wc: %d), (pid: %d)\n", rc, wc, (int)getpid());
  }
  return 0;
}