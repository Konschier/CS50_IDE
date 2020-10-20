#include <stdio.h>
#include <cs50.h>
#include <math.h>

int main(void)
{
    float money;
    do
    {
        money = get_float("Enter your change: ");  //Get input from user
    }
    while (money <= 0);

    int cents = round(money * 100);  //round the money
    int coins = 0;

    while (cents >= 25)  //Remove 25 cents and add 1 to the number of coins
    {
        cents -= 25;
        coins++;
    }
    while (cents >= 10)  //Remove 10 cents and add 1 to the number of coins
    {
        cents -= 10;
        coins++;
    }
    while (cents >= 5)  //Remove 5 cents and add 1 to the number of coins
    {
        cents -= 5;
        coins++;
    }
    while (cents >= 1)  //Remove 1 cents and add 1 to the number of coins
    {
        cents -= 1;
        coins++;
    }

    printf("You will need at least %i", coins);  //Return the number of coins that we will need
}
