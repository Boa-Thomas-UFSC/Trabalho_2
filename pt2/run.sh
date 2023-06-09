#!/bin/bash
echo -e "\n"
rm BIN
ls -lh
echo -e "\n"

# Command 1: ./archiver -c BIN alicate.jpg jogo.jpg jorge.jpg
read -p "Press Enter to execute './archiver -c BIN alicate.jpg jogo.jpg jorge.jpg': " input
./archiver -c BIN alicate.jpg jogo.jpg jorge.jpg

echo -e "\n"

# Command 2: ./archiver -l BIN
read -p "Press Enter to execute './archiver -l BIN': " input
./archiver -l BIN

echo -e "\n"

# Command 3: md5sum alicate.jpg jogo.jpg jorge.jpg
read -p "Press Enter to execute 'md5sum alicate.jpg jogo.jpg jorge.jpg': " input
md5sum_before=$(md5sum alicate.jpg jogo.jpg jorge.jpg)
echo $md5sum_before

echo -e "\n"

# Command 4: rm -rf alicate.jpg jogo.jpg jorge.jpg
read -p "Press Enter to execute 'rm -rf alicate.jpg jogo.jpg jorge.jpg': " input
rm -rf alicate.jpg jogo.jpg jorge.jpg

echo -e "\n"

# Command 5: ./archiver -e BIN
read -p "Press Enter to execute './archiver -e BIN': " input
./archiver -e BIN

echo -e "\n"

# Command 6: md5sum alicate.jpg jogo.jpg jorge.jpg
read -p "Press Enter to execute 'md5sum alicate.jpg jogo.jpg jorge.jpg': " input
md5sum_after=$(md5sum alicate.jpg jogo.jpg jorge.jpg)
echo $md5sum_after

echo -e "\n"

# Compare the md5sums
if [ "$md5sum_before" == "$md5sum_after" ]; then
    echo "The md5sums are identical. The archiving and extracting processes have not altered the files."
else
    echo "The md5sums are different. The archiving and extracting processes have altered the files."
fi
