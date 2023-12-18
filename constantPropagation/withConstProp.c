#include<stdio.h>
#include<time.h>
int main(){
    clock_t start, end;
    double cpu_time_used;
    start = clock();
    printf("Result: %d",(3*3)+(4+4));
    end=clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("\nTime taken: %f\n",cpu_time_used);
}