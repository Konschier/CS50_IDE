#include <stdio.h>
#include <cs50.h>
#include <string.h>
#include <math.h>
#include <ctype.h>

int get_index(string s);

int main(void)
{
    string text = get_string("Text: "); //getting the useer input
    int index = get_index(text);

    if (index < 1)
    {
        printf("Before Grade 1\n"); 
    }
    else if (index >= 16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Grade %d\n", index); //returning the grade
    }

    return 0;
}

int get_index(string s)
{
    int letters = 0, sentences = 0, words = 0; // declaring variables

    for (int i = 0, n = strlen(s); i < n; i++)
    {
        char ch = s[i];
        if (isalpha(ch))
        {
            letters++;
        }

        //Counting words
        if (isspace(ch))
        {
            words++;
        }

        //checking for . ! ?
        if (ch == '.' || ch == '!' || ch == '?')
        {
            sentences++;
        }
    }
    words++;

    float L = (letters * 100.0f) / words;
    float S = (sentences * 100.0f) / words;
    
    //using the formula given by the problem
    return round(0.0588 * L - 0.296 * S - 15.8);

}