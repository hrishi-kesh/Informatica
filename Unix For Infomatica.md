<<<<<<< HEAD
###  Unix for Informatica by NIC IT Academy 
- Link:- https://www.youtube.com/watch?v=TPpJV1aRB2I
- All directory related commands
- pwd:- Present working directory, mkdir:- Make directory, cd:- Change directory, ls:- List files,ls -ltr:-It will show the list of files with all details like time and date cp:- Copy files, mv:- Move files, rm:- Remove files, rmdir:- Remove directory, touch:- Create a file, cat:- Concatenate and display file content, head:- Display the first few lines of a file, tail:- Display the last few lines of a file.
- mkdir one two three :-It will create three directories one, two, and three, mkdir -p parent/child/grand_c
hild:- It will create a parent directory and inside that it will create child and inside that it will create grand_child directory.
-  cd dir_name:- goto dir_name, cd ..:- It will go to the previous directory, cd /:- It will go to the root directory, cd :- It will go to the home directory,  cd parent/child/grand_child:- It will go inside the sub directories.
- rmdir dir_name1 dir_name2:- It will remove the multiple empty directory dir_name or single empty directory based on no. of directory we have given, rm -r dir_name:- It will recursively remove the directory dir_name and all its contents
- clear:- it will clear the terminal screen
## File handling commands
- touch file_name:- It will create an empty file with the name file_name,
- vi editor commands:- When we open the file in vi editor mode means in "command mode" we can use the following commands
- vi file_name.txt:-It will open the file_name.txt if exists or create a new file if it does not exist.
  - H- Left, J- Down, K- Up, L- Right.
  Once you have cursor positioned you want to delete text as follows
  - x- Delete the character under the cursor, X- Delete the character before the cursor, dw- Deletes from cursor to the next word, dd- Deletes the line the cursor is one.
  - To enter text, you can use one of text entry modes.
  -a- Add text after the cursor, i- Insert text before the cursor, A- Add text to the end of the current line.
  -I- Insert text at the beginning of the current line, o- Open a new line below the current line, O- Open a new line above the current line.
  - To exit text entry mode and return to command mode, press the Esc key.
  - TO undo the changes:- u:- Undo the last command entered, U:- Undo all changes to the **current line**

- To Save/Quit
  - :w- Save the file and remain open, :q- Quit the editor if you have made no changes, first press esc then write :wq- write(Save) and quit the editor, :q!- Quit without saving changes, ZZ:- writes(save) the file and exits vi
- cat file_name.txt:- It will display the content of the file_name.txt.
- cat >sample2.txt:- It will create a file sample2.txt and allow you to enter text into it. To save and exit, press Ctrl+D.
- cat sample.txt sample2.txt:- It will show the content of both files sample.txt and sample2.txt.
- cat >>sample.txt:- It will allow you to append text to the existing file sample.txt. To save and exit, press Ctrl+D.
- cp file_name.txt directory_name:- It will copy the file file_name.txt to the directory directory_name.
- cp file_name.txt file_name2.txt:- It will copy the file file_name.txt to the same directory with a new name file_name2.txt.
mv file_name.txt directory_name:- It will move the file file_name.txt to the directory directory_name.
- mv file_name.txt file_name2.txt:- It will rename the file file_name.txt to file_name2.txt in the same directory.
- mv directory_name1 directory_name2:- It will rename the directory directory_name1 to directory_name2. 
- rm file_name.txt:- It will remove the file file_name.txt.
- rm -r directory_name:- It will remove the directory directory_name and all its contents. rm directory_name:- It will remove the directory directory_name if it is empty.
- All file and folder names are case-sensitive in Unix.
- ls -a:- It will show all files including hidden files (files starting with a dot).
- ls -lart:- It will show the list of files with all details like time and date, including hidden files.
--------------------------------------------------------
### Unix for Infomatica part 2
- touch dummy.ind:- It is indicator file. We are creating this file when informatica processed all file and there is no file left then we create dummy.ind to show there is no file left to process.
- touch .hidden_file.txt:- It will create a hidden file with the name .hidden_file.txt. It will show when we use ls -lart command.
- ls -l:- It will show the long listing format of files in the current directory. ls -l -a:- It will show the long listing format of files including hidden files.
- ls -F:- It will show files along with folders and in folder names will have a slash at the end.
- ls -r:- It will show the files in reverse order.
- head -n file_name.txt:- It will display the first n lines of the file file_name.txt. or head -n 5 file_name:- It will display the 5 lines of the file. head file_name.txt:- It will display the first 10 lines of the file file_name.txt.
- head -n:- for n lines, head -c:- for n bytes, head -q:-for quiet mode, head -v:- for verbose mode.
- head customer.txt states.txt:- It will display the first 10 lines of both files customer.txt and states.txt.
- If you want not to display the filename but want to display its content, you can use the following command:
  - head -q customer.txt states.txt:- It will display the content of both files without showing the filename.
- head -v customer.txt:- It will display the content of files with the filename.
- tail:- It is similar to head but it will display the last n lines of the file.
- head -10 sample.txt | tail -5 :- It will display the last 5 lines of the result of the first 10 lines of the file sample.txt.
**sed -n '7,9p' sample.txt **:- It will display the lines from 7 to 9 of the file sample.txt.
- head -10 sample.txt | tail -5 > sample_middle.txt:- It will save the last 5 lines of the first 10 lines of the file sample.txt into a new file sample_middle.txt.
**In realtime scenario in informatica we are using this command to save the particular no. of lines from log file**
- ls -l | head -5:- It will display the first 5 lines of the output of the ls -l command.
- more file_name.txt:- Generally cat command will display the entire content of the file at once, but if the file is large, it will scroll down quickly. To avoid this, we can use the more command which will display the content of the file page by page. We can use "enter" key to scroll down one line at a time or "space" key to scroll down one page at a time. To exit the more command, we can press "q". You can also use up and down arrow keys to scroll up and down the pages of the file.
- less file_name.txt:- It is similar to the more command but it allows us to scroll up and down the pages of the file. We can use "up" and "down" arrow keys to scroll up and down the one line only. To exit the less command, we 
------------------------------------------------------
grep command:- It is global regular expression pattern command. It is used to search for a specific pattern in a file or output of a command.
-i:- case insensitive search, -n:- display the line number, -c:- count the matches. -v:- display line doesn't match, -l:- display the file name.
- grep 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the matching lines.
- grep -i 'rakesh' sample.txt:- It will search for the pattern 'rakesh' in the file sample.txt ignoring the case and display the matching lines. It will display the lines containing 'Rakesh', 'rakesh', 'RAKESH', etc.
- grep -n 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the matching lines along with their line numbers.
- grep -in 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt ignoring the case and display the matching lines along with their line numbers. 
- grep -ic 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt ignoring the case and display the count of matching lines. 
- grep -l 'Arun' sample.txt sample2.txt:- It will search for the pattern 'Arun' in the files sample.txt and sample2.txt and display **only the names of the files** containing the matching lines.
- grep -v 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the lines that do not match the pattern.
------------------------------------------------------------
### wc command
- wc sample.txt:- It will display the count of lines, words, and characters in the file sample.txt.
- wc -l sample.txt:- It will display the count of lines in the file sample.txt. Similarly we can use -w for words and -c for characters or combination of these options like - or lw or lc
## sort command
- sort sample.txt:- It will sort the lines of the file sample.txt in ascending order.
- sort -r sample.txt:- It will sort the lines of the file sample.txt in descending order.
- sort sample.txt > sorted_sample.txt:- It will sort the lines of the file sample.txt and save the sorted output to a new file sorted_sample.txt. If we want to append the sorted output to an existing file, we can use the >> instead of >.
## uniq command
- uniq sample.txt:- It will remove the duplicate lines from the file sample.txt and display the unique lines.
- uniq -i sample.txt:- It will remove the duplicate lines from the file sample.txt ignoring the case and display the unique lines.
- uniq -d sample.txt:- It will display only the duplicate lines from the file sample.txt.
- uniq -id sample.txt:- It will display only the duplicate lines from the file sample.txt ignoring the case.
- uniq -u sample.txt:- It will display only the unique lines from the file sample.txt.
- uniq -iu sample.txt:- It will display only the unique lines from the file sample.txt ignoring the case.
- uniq -c sample.txt:- It will display the count of each unique line in the file sample.txt.
- uniq -ic sample.txt:- It will display the count of each unique line in the file
- uniq -c sample.txt | grep '2':- It will display the lines that have a count of 2 in the file sample.txt.
------------------------------------------------------
### gedit command
=======
###  Unix for Informatica by NIC IT Academy 
- Link:- https://www.youtube.com/watch?v=TPpJV1aRB2I
- All directory related commands
- pwd:- Present working directory, mkdir:- Make directory, cd:- Change directory, ls:- List files,ls -ltr:-It will show the list of files with all details like time and date cp:- Copy files, mv:- Move files, rm:- Remove files, rmdir:- Remove directory, touch:- Create a file, cat:- Concatenate and display file content, head:- Display the first few lines of a file, tail:- Display the last few lines of a file.
- mkdir one two three :-It will create three directories one, two, and three, mkdir -p parent/child/grand_c
hild:- It will create a parent directory and inside that it will create child and inside that it will create grand_child directory.
-  cd dir_name:- goto dir_name, cd ..:- It will go to the previous directory, cd /:- It will go to the root directory, cd :- It will go to the home directory,  cd parent/child/grand_child:- It will go inside the sub directories.
- rmdir dir_name1 dir_name2:- It will remove the multiple empty directory dir_name or single empty directory based on no. of directory we have given, rm -r dir_name:- It will recursively remove the directory dir_name and all its contents
- clear:- it will clear the terminal screen
## File handling commands
- touch file_name:- It will create an empty file with the name file_name,
- vi editor commands:- When we open the file in vi editor mode means in "command mode" we can use the following commands
- vi file_name.txt:-It will open the file_name.txt if exists or create a new file if it does not exist.
  - H- Left, J- Down, K- Up, L- Right.
  Once you have cursor positioned you want to delete text as follows
  - x- Delete the character under the cursor, X- Delete the character before the cursor, dw- Deletes from cursor to the next word, dd- Deletes the line the cursor is one.
  - To enter text, you can use one of text entry modes.
  -a- Add text after the cursor, i- Insert text before the cursor, A- Add text to the end of the current line.
  -I- Insert text at the beginning of the current line, o- Open a new line below the current line, O- Open a new line above the current line.
  - To exit text entry mode and return to command mode, press the Esc key.
  - TO undo the changes:- u:- Undo the last command entered, U:- Undo all changes to the **current line**

- To Save/Quit
  - :w- Save the file and remain open, :q- Quit the editor if you have made no changes, first press esc then write :wq- write(Save) and quit the editor, :q!- Quit without saving changes, ZZ:- writes(save) the file and exits vi
- cat file_name.txt:- It will display the content of the file_name.txt.
- cat >sample2.txt:- It will create a file sample2.txt and allow you to enter text into it. To save and exit, press Ctrl+D.
- cat sample.txt sample2.txt:- It will show the content of both files sample.txt and sample2.txt.
- cat >>sample.txt:- It will allow you to append text to the existing file sample.txt. To save and exit, press Ctrl+D.
- cp file_name.txt directory_name:- It will copy the file file_name.txt to the directory directory_name.
- cp file_name.txt file_name2.txt:- It will copy the file file_name.txt to the same directory with a new name file_name2.txt.
mv file_name.txt directory_name:- It will move the file file_name.txt to the directory directory_name.
- mv file_name.txt file_name2.txt:- It will rename the file file_name.txt to file_name2.txt in the same directory.
- mv directory_name1 directory_name2:- It will rename the directory directory_name1 to directory_name2. 
- rm file_name.txt:- It will remove the file file_name.txt.
- rm -r directory_name:- It will remove the directory directory_name and all its contents. rm directory_name:- It will remove the directory directory_name if it is empty.
- All file and folder names are case-sensitive in Unix.
- ls -a:- It will show all files including hidden files (files starting with a dot).
- ls -lart:- It will show the list of files with all details like time and date, including hidden files.
--------------------------------------------------------
### Unix for Infomatica part 2
- touch dummy.ind:- It is indicator file. We are creating this file when informatica processed all file and there is no file left then we create dummy.ind to show there is no file left to process.
- touch .hidden_file.txt:- It will create a hidden file with the name .hidden_file.txt. It will show when we use ls -lart command.
- ls -l:- It will show the long listing format of files in the current directory. ls -l -a:- It will show the long listing format of files including hidden files.
- ls -F:- It will show files along with folders and in folder names will have a slash at the end.
- ls -r:- It will show the files in reverse order.
- head -n file_name.txt:- It will display the first n lines of the file file_name.txt. or head -n 5 file_name:- It will display the 5 lines of the file. head file_name.txt:- It will display the first 10 lines of the file file_name.txt.
- head -n:- for n lines, head -c:- for n bytes, head -q:-for quiet mode, head -v:- for verbose mode.
- head customer.txt states.txt:- It will display the first 10 lines of both files customer.txt and states.txt.
- If you want not to display the filename but want to display its content, you can use the following command:
  - head -q customer.txt states.txt:- It will display the content of both files without showing the filename.
- head -v customer.txt:- It will display the content of files with the filename.
- tail:- It is similar to head but it will display the last n lines of the file.
- head -10 sample.txt | tail -5 :- It will display the last 5 lines of the result of the first 10 lines of the file sample.txt.
**sed -n '7,9p' sample.txt **:- It will display the lines from 7 to 9 of the file sample.txt.
- head -10 sample.txt | tail -5 > sample_middle.txt:- It will save the last 5 lines of the first 10 lines of the file sample.txt into a new file sample_middle.txt.
**In realtime scenario in informatica we are using this command to save the particular no. of lines from log file**
- ls -l | head -5:- It will display the first 5 lines of the output of the ls -l command.
- more file_name.txt:- Generally cat command will display the entire content of the file at once, but if the file is large, it will scroll down quickly. To avoid this, we can use the more command which will display the content of the file page by page. We can use "enter" key to scroll down one line at a time or "space" key to scroll down one page at a time. To exit the more command, we can press "q". You can also use up and down arrow keys to scroll up and down the pages of the file.
- less file_name.txt:- It is similar to the more command but it allows us to scroll up and down the pages of the file. We can use "up" and "down" arrow keys to scroll up and down the one line only. To exit the less command, we 
------------------------------------------------------
grep command:- It is global regular expression pattern command. It is used to search for a specific pattern in a file or output of a command.
-i:- case insensitive search, -n:- display the line number, -c:- count the matches. -v:- display line doesn't match, -l:- display the file name.
- grep 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the matching lines.
- grep -i 'rakesh' sample.txt:- It will search for the pattern 'rakesh' in the file sample.txt ignoring the case and display the matching lines. It will display the lines containing 'Rakesh', 'rakesh', 'RAKESH', etc.
- grep -n 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the matching lines along with their line numbers.
- grep -in 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt ignoring the case and display the matching lines along with their line numbers. 
- grep -ic 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt ignoring the case and display the count of matching lines. 
- grep -l 'Arun' sample.txt sample2.txt:- It will search for the pattern 'Arun' in the files sample.txt and sample2.txt and display **only the names of the files** containing the matching lines.
- grep -v 'Rakesh' sample.txt:- It will search for the pattern 'Rakesh' in the file sample.txt and display the lines that do not match the pattern.
------------------------------------------------------------
### wc command
- wc sample.txt:- It will display the count of lines, words, and characters in the file sample.txt.
- wc -l sample.txt:- It will display the count of lines in the file sample.txt. Similarly we can use -w for words and -c for characters or combination of these options like - or lw or lc
## sort command
- sort sample.txt:- It will sort the lines of the file sample.txt in ascending order.
- sort -r sample.txt:- It will sort the lines of the file sample.txt in descending order.
- sort sample.txt > sorted_sample.txt:- It will sort the lines of the file sample.txt and save the sorted output to a new file sorted_sample.txt. If we want to append the sorted output to an existing file, we can use the >> instead of >.
## uniq command
- uniq sample.txt:- It will remove the duplicate lines from the file sample.txt and display the unique lines.
- uniq -i sample.txt:- It will remove the duplicate lines from the file sample.txt ignoring the case and display the unique lines.
- uniq -d sample.txt:- It will display only the duplicate lines from the file sample.txt.
- uniq -id sample.txt:- It will display only the duplicate lines from the file sample.txt ignoring the case.
- uniq -u sample.txt:- It will display only the unique lines from the file sample.txt.
- uniq -iu sample.txt:- It will display only the unique lines from the file sample.txt ignoring the case.
- uniq -c sample.txt:- It will display the count of each unique line in the file sample.txt.
- uniq -ic sample.txt:- It will display the count of each unique line in the file
- uniq -c sample.txt | grep '2':- It will display the lines that have a count of 2 in the file sample.txt.
------------------------------------------------------
### gedit command
>>>>>>> 99200b8584239b0b102a9aa4c4d1cbd69329bd3b
- gedit sample.txt:- It will open the file sample.txt in the gedit text editor. If the file does not exist, it will create a new file with that name. This will generally work in linux system not work in wsl linux based window subsystem