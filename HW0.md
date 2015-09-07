## Introduction to git commits

### Level 1

git commit -m "Commit c2"
git commit -m "Commit c3"

### Level 2

git checkout -b bugFix

### Level 3

git checkout -b bugFix
git commit -m "Commit c2"
git checkout master
git commit -m "Commit c3"
git merge bugFix

### Level 4

git checkout -b bugFix  
git commit -m "Commit c2"  
git checkout master  
git commit -m "Commit c3"  
git checkout bugFix  
git rebase master  

## Detach yo' HEAD

### Level 1

git checkout C4  

### Level 2

git checkout C4^  

### Level 3

git branch -f master C6  
git branch -f bugFix bugFix~3  
git checkout HEAD^  

### Level 4

git reset HEAD~1  
git checkout pushed  
git revert HEAD  

## Screenshot
![alt tag] (https://github.ncsu.edu/aboke/HW/blob/master/GitScreenshot.jpg)

## Hooks
![alt tag] (https://github.ncsu.edu/aboke/HW/blob/master/hooks.gif)

Contents of the "post-commit" file
```
#!/bin/sh
firefox http://www.google.com/

```

