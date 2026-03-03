#include <stdio.h> 

int main() {
    int arr[4][4] = {{1, 6, 5, 3}, {2, 4, 7, 9}, {8, 11, 15, 13}, {16, 12, 10, 22}};
    int (*p)[4] = arr;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%d\t", *(*(p + i) + j));
        }
        printf("\n");
    }
}

