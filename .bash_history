./mario
check50 cs50/problems/2020/x/mario/less
style50 mario.c
style50 mario.c
make mario
style50 mario.c
check50 cs50/problems/2020/x/mario/less
submit50 cs50/problems/2020/x/mario/less
mkdir ~/pset1/cash
cd ~/pset1/cash
touch cash.c
make cash.c
make cash
clear
make cash
make cash
make cash
clear
./cash
cash make
make cash
./cash
check50 cs50/problems/2020/x/cash
clear
make cash
check50 cs50/problems/2020/x/cash
style50 cash.c
style50 cash.c
style50 cash.c
submit50 cs50/problems/2020/x/cash
make cash
submit50 cs50/problems/2020/x/cash
mkdir
mk dir ~/pset2/caesar
mkdir ~/pset2/caesar
cd ~/pset2/caesar
ls
mkdir pset2
cd pset2
ls
touch cesar.c
make cesar.c
make cesar
./cesar
mkdir cesar
cd redability/
touch redability.c
make redability
clear
ls
cd pset2
ls
cd redability/
make redability 
make redability 
make redability 
make redability 
make redability 
clear
check cs50/problems/2020/x/redability
check50 cs50/problems/2020/x/redability
check50 cs50/problems/2020/x/redability
cd pset
cd pset2
cd redability/
make redability 
./redability 
check50 cs50/problems/2020/x/redability
check50 cs50/problems/2020/x/redability
check50 cs50/problems/2020/fall/readability
check50 cs50/problems/2020/fall/readability
style50 readability.c
style50 readability.c
cd Facul/
make ED_Prova 
make ED_Prova 
./ED_Prova 
./ED_Prova 
1
cd pset2/
cd redability/
style50 readability.c
style50 readability.c
check50 cs50/problems/2020/x/readability
submit50 cs50/problems/2020/x/readability
cd .. ..
cd ../..
git init
git add .
git commit -m "CS50 IDE Archives"
git config -- global user.email "maykonschier@gmail.com"
git config --global user.email "maykonschier@gmail.com"
git config --global user.name "Maykon de A Schier"
git commit -m "CS50 IDE Archives"
git remote add origin https://github.com/Konschier/CS50_IDE.git
git branch -M main
git push -u origin main
cd 
make cesar
cd pset2/cesar/
make caesar
make caesar
make caesar
make caesar
make caesar
make caesar 
make caesar
make caesar
ls
cd ..
ls
ls
cd caesar/
make caesar 
make caesar 
make caesar 
make caesar 
make caesar 
make caesar 
make caesar 
make caesar 
make caesar 
#include <stdio.h>
#include <stdlib.h>
#include <cs50.h>
#include <string.h>
#include <ctype.h>
bool check_valid_key(string s);
int main (int argc, string argv[])
{     {         printf("Usage: ./cesar key");
        return 1;
    }
    int key = atoi(argv[1]); // atoi converts the string argument str to an integer (type int).get_
    string plaintext = get_string("plaintext: "); // Get the user input
    printf("ciphertext: "); // Print the cipher texto to the user
    for (int i = 0, n = strlen(plaintext); i < n; i++) // To interate over the plain text and
    {         char c = plaintext[i];         if (isalpha(c))
        {             char mod ='A';             if (islower(c))
                mod = 'a';
            printf("%c", (c - mod + key) % 26 + mod); // The given formula bit corrected to change the upperletter to lowerletter
        }
        else
            printf("%c", c);
    }
    printf("\n");
}
bool check_valid_key(string s)
{     for (int i = 0, n = strlen(s); i < n; i++)
    {     {         return false;     };         return true;     }
make caesar 
help50 make caesar.c 
make caesar 
clear
make caesar
make caesar
make caesar
./caesar 
./caesar 8
check50 cs50/problems/2020/x/caesar
style50 caesar.c
style50 caesar.c
style50 caesar.c
style50 caesar.c
style50 caesar.c
style50 caesar.c
submit50 cs50/problems/2020/x/caesar
cd ../..
git add .
git commit -m "Caesar done"
git push origin master
git push origin main
cd pset3/
touch plurality.c
cd ..
wget https://cdn.cs50.net/2019/fall/psets/3/plurality/plurality.c
cd pset3
ls
make plurality
help50 make plurality
make
make plurality 
make plurality 
make plurality
make plurality 
make plurality 
help50 make plurality
make plurality 
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
make plurality
submit50 cs50/problems/2020/x/plurality
check50 cs50/problems/2020/x/plurality
style50 plurality.c
style50 plurality.c
style50 plurality.c
style50 plurality.c
style50 plurality.c
submit50 cs50/problems/2020/x/plurality
cd runoff/
wget https://cdn.cs50.net/2019/fall/psets/3/runoff/runoff.c
make runoff
make runoff
make runoff
make runoff
make runoff
make runoff
make runoff
help50 make runoff
make runoff
make runoff
make runoff
make runoff
make runoff
make runoff
make runoff
./runoff 
./runoff alana
./runoff alana
./runoff alana
check50 cs50/problems/2020/x/runoff
style50 runoff.c
style50 runoff.c
submit50 cs50/problems/2020/x/runoff
cd ..
cd ..
git add .
git commit -m "runoff complete"
git push origin main
cd pset4
cd recover/
touch recover.c
./recover.c
wget http://cdn.cs50.net/2019/fall/psets/4/recover/recover.zip
unzip recover.zip 
rem recover.zip -y
rm recover.zip -y
rm recover.zip --y
rm recover.zip 
ls
wget http://cdn.cs50.net/2019/fall/psets/4/recover/recover.zip
unzip recover.zip 
make recover
make recover
cd pset3
cd recover
cd ..
cd pset4
cd recover
ls
make recover
make recover
make recover
make recover
make recover
make recover
make recover
make recover
make recover
make recover
./recover card.raw
make recover
check50 cs50/problems/2020/x/recover
style50 recover.c
style50 recover.c
style50 recover.c
style50 recover.c
style50 recover.c
style50 recover.c
submit50 cs50/problems/2020/x/recover
cd ../..
git add .
git add .
git commit -m "Finished Recovery"
git push origin main
cd pset4/filter
wget https://cdn.cs50.net/2019/fall/psets/4/filter/less/filter.zip
unzip filter.zip 
ls
ls -la
make filter
cd pset4
cd filter
make filter
make filter
wget https://cdn.cs50.net/2019/fall/psets/4/filter/less/filter.zip
unzip filter
cd pset4/filter
ls
make filter
make filtert
make filter
make filter
make filter
make filter
make filter
$ ./filter -g images/yard.bmp out.bmp
./filter -g images/yard.bmp out.bmp
check50 cs50/problems/2020/x/filter/less
help check50 cs50/problems/2020/x/filter/less
help50 check50 cs50/problems/2020/x/filter/less
check50 cs50/problems/2020/x/filter/less
check50 cs50/problems/2020/x/filter/less
style50 helpers.cstyle
style50 helpers.c
style50 helpers.c
style50 helpers.c
style50 helpers.c
check50 cs50/problems/2020/x/filter/less
style50 helpers.c
make filter
make filter
check50 cs50/problems/2020/x/filter/less
submit50 cs50/problems/2020/x/filter/less
cd ../..
git add .
git commit -m "Finished the filter problem"
git add .
git commit -m "Finished the filter problem"
git push origin main
mkdir pset5
wget https://cdn.cs50.net/2019/fall/psets/5/speller/speller.zip
cd pset5
cd pset5
cd pset5
wget https://cdn.cs50.net/2019/fall/psets/5/speller/speller.zipwget https://cdn.cs50.net/2019/fall/psets/5/speller/speller.zip
unzip speller
rm speller.zip
cd pset4
cd filter/
make filter
filter
./filter 
./filter $ ./filter -g images/yard.bmp out.bmp
$ ./filter -g images/yard.bmp out.bmp
./filter -g images/yard.bmp out.bmp
./filter -s images/yard.bmp out.bmp
./filter -r images/yard.bmp out.bmp
./filter -b images/yard.bmp out.bmp
wget https://cdn.cs50.net/2019/fall/psets/5/speller/speller.zip
unzip speller.zip 
cd pset5
ls
ls -la
cd speller
ls
make 
make 
clear
make
make
make
make
makew
make
make
make
make
make
make
make
make
make
make
make
make
make
maker
make
make
make
make
make
make
make
cd pset5
ls
cd speller/
make
help50 make
make
$ check50 cs50/problems/2020/x/speller
check50 cs50/problems/2020/x/speller
check50 cs50/problems/2020/x/speller
make
check50 cs50/problems/2020/x/speller
check50 cs50/problems/2020/x/speller
makwe
make
cd pset5
make
cd speller/
make
make
make
make
make
$ help50 valgrind ./speller texts/cat.txt
help50 valgrind ./speller texts/cat.txt
./speller texts/lalaland.txt
check50 cs50/problems/2020/x/speller
submit50 cs50/problems/2020/x/speller
cd ../..
git add .
git commit -m "finished to fix speller program"
git push origin master
git push origin main
mkdir pset6
cd pset6
touch hello py
python3 hello.py 
python3 hello.py 
python3 hello.py 
python3 hello.py 
python3 hello.py 
python hello.py 
python hello.py 
python hello.py 
submit50 cs50/problems/2020/x/sentimental/hello
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
python mario.py 10
5
5
5
p
python mario.py 
python mario.py 
submit50 cs50/problems/2020/x/sentimental/hello
submit50 cs50/problems/2020/x/sentimental/mario/less
submit50 cs50/problems/2020/x/sentimental/mario/less
submit50 cs50/problems/2020/x/sentimental/mario/less
python mario.py 
cd cash/
ls
cleR
submit50 cs50/problems/2020/x/sentimental/cash
python cash.py 
python cash.py 
python cash.py 
submit50 cs50/problems/2020/x/sentimental/cash
cd ../redability/
ls -l
python readability.py
python readability.py
python readability.py
readability.py
python readability.py
python readability.py
python readability.py
python readability.py
python readability.py
Congratulations! Today is your day. You're off to Great Places! You're off and away!
python readability.py
python readability.py
submit50 cs50/problems/2020/x/sentimental/readability
cd ..
wget https://cdn.cs50.net/2019/fall/psets/6/dna/dna.zip
unzip dna.zip 
rm -r dna.zip 
cd dna
ls -l
touch dna.py
python dna.py databases/large.csv sequences/5.txt
python dna.py databases/large.csv sequences/5.txt
cd pset6/
cd dna/
python dna.py databases/large.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/5.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/small.csv sequences/1.txt
python dna.py databases/large.csv sequences/15.txt
python dna.py databases/small.csv sequences/2.txt
submit50 cs50/problems/2020/x/dna
cd ../../../
cd ~/
