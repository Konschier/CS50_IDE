#include <stdio.h>
#include <stdlib.h>
#include <cs50.h>
#include <stdint.h>

#define BLOCK_SIZE 512
#define FILE_NAME_SIZE 8

typedef uint8_t BYTE;

bool is_start_new_jpg(BYTE buffer[]);

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: ./recover image\n"); // Helping the user with the initial input
        return 1;
    }

    FILE *infile = fopen(argv[1], "r"); // Declaring pointers

    if (infile == NULL)
    {
        printf("File not found\n"); // Giving the user some response if the program don't find any jpg

        return 1;
    }

    BYTE buffer[BLOCK_SIZE];

    int file_index = 0;

    bool have_found_first_jpg = false;

    FILE *outfile; // Declaring pointers

    while (fread(buffer, BLOCK_SIZE, 1, infile))
    {
        if (is_start_new_jpg(buffer))
        {
            if(!have_found_first_jpg)
                have_found_first_jpg = true;
            else fclose(outfile);

            char filename[FILE_NAME_SIZE];

            sprintf(filename, "%03i.jpg", file_index++);

            outfile = fopen(filename, "w");

            if (outfile == NULL)

                return 1;

            fwrite(buffer, BLOCK_SIZE, 1, outfile);
        }
        else if (have_found_first_jpg)
        {
            // Keep writing the previous file
            fwrite(buffer, BLOCK_SIZE, 1, outfile);
        }
    }
    fclose(outfile); // Closing the files that I already used
    fclose(infile);
}

bool is_start_new_jpg(BYTE buffer[]) // This will check the initial byte for the magic byte
{
    return buffer[0] == 0xff && buffer[1] == 0xd8 && buffer[2] == 0xff
        && (buffer[3] & 0xf0) == 0xe0;
}