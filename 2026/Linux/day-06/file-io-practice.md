# practice basic file read/write

## Creating a file
 - touch notes.txt

## Writing text to a file
- echo "Hi">notes.txt
- echo "welcome to 90days of Devops">>notes.txt
- echo "Happy Learning">>notes.txt

## Reading the file back
- cat notes.txt
- echo "this is trainwithshubham"|tee -a notes.txt
- cat notes.txt | head -2
- cat notes.txt | tail -3

**NOTE : tee - tee command is used to read from standard input and write to standard output and files**
