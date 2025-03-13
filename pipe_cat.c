#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void){

  char buffer[200];

  int pipefd_1[2], pipefd_2[2];
  pid_t pid;

  // fork a cat process.
  // write to the stdin of cat,
  // let cat display the content of stdin
  // in it stdout.

  if(pipe(pipefd_1) == -1 || pipe(pipefd_2) == -1){
    perror("pipe");
    exit(EXIT_FAILURE);
  }

  pid = fork();
  if(pid == -1){
    perror("fork");
    exit(EXIT_FAILURE);
  }

  if(pid == 0){
    // child cat
    close(pipefd_1[0]);
    dup2(pipefd_1[1], STDOUT_FILENO);
    close(pipefd_1[1]);

    // write
    //ssize_t num_bytes_read = read(pipefd_1[0], buffer, sizeof(buffer));
    //printf("Number of bytes read: %ld\n", num_bytes_read);
    ssize_t num_bytes_wrote = write(STDOUT_FILENO, buffer, sizeof(buffer));
    printf("Number of bytes wrote: %ld\n", num_bytes_wrote);

    // int ch;
    // int i = 0;
    // FILE *stream;
    // stream = fdopen(pipefd_1[1], "w");
    // while((ch = fputc(buffer[i], stream)) != EOF){
    //   i = i+1;
    // }
    
    //close(pipefd_1[0]);
    close(pipefd_1[1]);
    
    // creat the cat
    // parent
    char *args[] = {"/usr/bin/cat", NULL};
    char *envp[] = {NULL};
    if(execve(args[0], args, envp) == -1){
      perror("execve");
      exit(EXIT_FAILURE);
    }
  }
  else if(pid > 0){
    // write to the stdin
    close(pipefd_1[1]);
    dup2(pipefd_1[0], STDIN_FILENO);
    //close(pipefd_1[0]);
    
    // read
  
    // int ch;
    // int i = 0;
    // FILE *stream;
    // stream = fdopen(STDIN_FILENO, "r");
    // while((ch = fgetc(stream)) != EOF){
      // if(ch == '\n'){
      //   buffer[i] = '\0';
      //   break;
      // }
      // else{
      //   buffer[i] = ch;
      // }
    //   buffer[i] = ch;
    //   i = i + 1;
    // }
    // buffer[i] = '\0';
    // close(pipefd_1[0]);

    ssize_t num_bytes_read = read(STDIN_FILENO, buffer, 7);  
    printf("Number of bytes read: %ld\n", num_bytes_read);
    if(num_bytes_read == -1){
       perror("read");
    }
    close(pipefd_1[0]);
  
   
  //  ssize_t num = write(pipefd_1[0], buffer, sizeof(buffer));
  //  close(pipefd_1[1]);
  //  if(num == -1){
  //   perror("write");
  //  }
   
   wait(NULL);
 }

  return 0;
}
