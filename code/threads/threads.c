#include <threads.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <pthread.h>

int a_global_var = 0;

// int arr_a[100000]

typedef struct arg {
  int a, b;
} arg;

int add(int x, int y) {
  return x + y;
}

void *thread_exec_func(void *argp) {
  int x = ((arg*)argp)->a;
  int y = ((arg*)argp)->b;
  fprintf(stdout, "%d\n", add(x, y));
  fprintf(stdout, "%d ########## Now in %lu ##########\n", __LINE__, pthread_self());
  pthread_exit(NULL);
  return NULL;
}

void* add_global(void *argp) {
  static int a_static_val = 0;
  a_global_var += 1;
  a_static_val += 1;
  fprintf(stdout, "STATIC: Now value is: %d\n", a_global_var);
  return NULL;
}


int main(int argc, char **argv) {
  pthread_t tid;
  arg t;
  t.a = 1, t.b = 2;
  // fprintf(stdout, "%d ########## Now in %lu ##########\n", __LINE__, pthread_self());
  // pthread_create(&tid, NULL, thread_exec_func, &t);
  // fprintf(stdout, "%d ########## Now in %lu ##########\n", __LINE__, pthread_self());
  // pthread_join(tid, NULL);
  // fprintf(stdout, "%d ########## Now in %lu ##########\n", __LINE__, pthread_self());

  for (int i = 1; i <= 5; ++i) {
    pthread_create(&tid, NULL, add_global, NULL);
    fprintf(stdout, "Now value is: %d\n", a_global_var);
    pthread_join(tid, NULL);
  }

  exit(0);
}