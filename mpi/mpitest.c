#include "mpi.h"
#include <stdio.h>
int main(int argc, char *argv[])
{
          int numprocs;
          int procnum;

          MPI_Init(&argc, &argv);

          MPI_Comm_rank(MPI_COMM_WORLD, &procnum);

          MPI_Comm_size(MPI_COMM_WORLD, &numprocs);
          
          char processor_name[MPI_MAX_PROCESSOR_NAME];
          int name_len;
          MPI_Get_processor_name(processor_name, &name_len);

          printf("Hello world! rank %d out of %d running on %s\n", procnum, numprocs, processor_name);

          MPI_Finalize();

          return 0;
}
