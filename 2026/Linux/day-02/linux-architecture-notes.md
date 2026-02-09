# understand how Linux works under the hood

## process states 
- New : the process is being created.
- running : in this state the instructions are being executed.
- Waiting : the process is in waiting state until an event occur like I/o operation completion or recieving a signal.
- Ready - the process is waiting to be assigned to a processor.
- Terminated : The process has finished execution.
- sleeping : The process is waiting for input or some resource but can be woken by signals.
- zombie : This process occurs when child process finishes its work and exits but the parent process doesn't acknowledge this termination.
- Orphan : This occurs when child process is still running and parent process has finished or terminated unexpectedly.

## List **5 commands** you would use daily
- pwd : it display present working directory.
- cp : to copy files/directory from source to destination.
- mv : to move or rename a file/diretory from source to destination.
- ls : to list all files/directory
- touch : to create file.
- mkdir : to create directory.
- rm : to delete file/directory.
- cat : to display contents of file

## FLags used with commands
**Flag:flags are additional parameters that can be passed to commands to change their default behavior. They are typically preceded by a hyphen (-)for short flag and double hyphen(--) for long flags**
- -r : recursive
- -t : tag
- -v : verbose
- ls -l : list all files with metadata/file permission
- ls -a : list hidden files
- ls -al : list hidden and metada of files/directory
- -f : specify the path of a file 
- -u username : to specify a username

