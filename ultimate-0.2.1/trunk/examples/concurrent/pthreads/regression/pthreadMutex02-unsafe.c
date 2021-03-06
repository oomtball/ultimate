//#Unsafe
// Author: heizmann@informatik.uni-freiburg.de
// Date: 2018-09-04
//

#include <stdio.h>
#include <pthread.h>

typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

struct __pthread_mutex_s
{
  int __lock ;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
 
  short __spins; short __elision;
  __pthread_list_t __list;
 
};

typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

pthread_mutex_t  mutex;

int main()
{
  pthread_mutex_init(&mutex, 0);
  pthread_mutex_lock(&mutex);
  pthread_mutex_unlock(&mutex);
  int ret = pthread_mutex_unlock(&mutex);
  printf("This line is reachable\n");
  printf("%d", ret);
  //@ assert \false;

  return 0;
}

