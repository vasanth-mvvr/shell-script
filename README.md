#shell-script

##steps
-Create a repository in github
-clone the repository to the IDE -- VS Code
-Add all the data to local area in which mine it is laptop
-Commit the changes that are added
-Push the code to the github

##COMMANDS
##Cloning
```
git clone <url> #url is http which we get in the github code.
```
##Add the files to temperary area
```
git add <file-name> 
```
##Multi add files
```
git add .
``` 
##Commit
```
git commit -m "short message for commiting" #commits to the with the local desktop that next needs to be pushed to the github
```
##pushing the data to store
```
git push -u origin main
```
##multiple commands at once to save time
```
git add .;git commit -m "message"; git push -u origin main
```