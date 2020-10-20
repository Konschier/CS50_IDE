#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int input, row, col, space;
    do
    {
        input = get_int("Enter the height here: ");
    }
    while (input < 1 || input > 8); //check if hte input is valid

    for (row = 0; row < input; row++)
    {

        for (space = 0; space < input - row - 1; space++) //loop that print spaces
        {
            printf(" ");
        }
        for (col = 0; col <= row ; col++) //loop that print the hashes
        {
            printf("#");
        }
        printf("\n");
    }
}