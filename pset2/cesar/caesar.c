#include <stdio.h>
#include <stdlib.h>
#include <cs50.h>
#include <string.h>
#include <ctype.h>

bool check_valid_key(string s);

int main (int argc, string argv[])
{
    if (argc != 2 || !check_valid_key(argv[1]))
    {
        printf("Usage: ./cesar key");
        return 1;
    }
    int key = atoi(argv[1]); // atoi converts the string argument str to an integer (type int).get_

    string plaintext = get_string("plaintext: "); // Get the user input

    printf("ciphertext: "); // Print the cipher texto to the user
    for (inr i = 0, n = strlen(plaintext); i < n; i++) // To interate over the plain text and
    {
        char c = plaintext[i];
        if (isalpha(c))
        {
            char mod ='A';
            if (islower(c))
                mod = 'a';
            printf("%c", (c - mod + key) % 26 + mod); // The given formula bit corrected to change the upperletter to lowerletter
        }
        else
            printf("%c", c)
    }
    printf(\n)
}

bool check_valid_key(string s)
{
    for (int i = 0, n = strlen(s); i < n; i++)
    {
    if (!isdigit(s[i]))
    {
        return false;
    }
        return true;
    }
}