// Implements a dictionary's functionality
#include <stdbool.h>
#include "dictionary.h"
#include <stdio.h>
#include <cs50.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
}
node;

// Number of buckets in hash table
const unsigned int N = (LENGTH + 1) * 'z';

// Hash table
node *table[N];

// Returns true if word is in dictionary else false
bool check(const char *word)
{
    // Obtain the hash value
    int hash_value = hash(word);

    node *cursor = table[hash_value];
    while (cursor != NULL)
    {
        if (strcasecmp(cursor->word, word) == 0)
        {
            return true;
        }
        cursor = cursor->next;
    }

    return false;

/*
    an early atmpt that didn't work but I whant to came back and try to make it work latter

    if ( table[hash_value] == NULL)
    {
        return false;
    }
    else
    {
        struct node *p;
        p= table[hash_value];

        while (p != NULL && (strcasecmp(word, p->word) == 0))
        {
            return true;
        }
        p = p->next;
    }
    return false;
    */
}

// Hashes word to a number, and turning they case sensitive
unsigned int hash(const char *word)
{
    int hash_sum = 0;
    unsigned int wlength = strlen(word);

    for (int i = 0; i < wlength; i++)
    {
        hash_sum += tolower(word[i]);
    }
    return (hash_sum % N);
}

// Loads dictionary into memory, returning true if successful else false
bool load(const char *dictionary)
{
     // Open the dictionary
    FILE *dict_pointer = fopen(dictionary, "r");
    if (dict_pointer == NULL)
    {
        return false;
    }

    // Read one word at time from the file
    char buffer[LENGTH + 1];

    while(fscanf(dict_pointer, "%s", buffer) != EOF)
    {
        // Creating nodes
        struct node *temp = (struct node*)malloc(sizeof(struct node));
        if (temp == NULL)
        {
            return false;
        }
        // Copping the word to the new node(temp)
        temp->next = NULL;

        strcpy(temp->word, buffer);

        // Obtaining the hashCode
        int hashCode = hash(temp->word);

        if (table[hashCode] == NULL)
        {
            table[hashCode] = temp;
        }
        else
        {
            temp->next = table[hashCode];
            table[hashCode] = temp;
        }
    }
    fclose(dict_pointer);
    return true;
}

// Returns number of words in dictionary if loaded else 0 if not yet loaded
unsigned int size(void)
{
    int words = 0;

    for (int i = 0; i < N; i++)
    {
        struct node *p;
        p = table[i];
        if ( p != NULL)
        {
            p = p->next;
            words ++;
        }
    }
    return words;
}

// Unloads dictionary from memory, returning true if successful else false
bool unload(void)
{
    for (int i = 0; i < N; i++)
    {
        struct node *temp2;
        temp2 = table[i];
        struct node *temp1;
        temp1 = table[i];

        while (temp2 != NULL)
        {
            temp1 = temp2;
            temp2 = temp2->next;
            free(temp1);
        }
    }
    return true;
}
