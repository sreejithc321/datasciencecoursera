Adding an existing project to GitHub using the command line

1 Create a new repository on GitHub. [do not initialize the new repository with README, license, or gitignore files]

2 Initialize the local directory as a Git repository.
  git init

3 Add the files in your new local repository. 
  git add .

4 Commit the files 
  git commit -m 'First commit'

5 Sets the new remote
  git remote add origin remote repository URL

6 Verifies the new remote URL
  git remote -v

7 Push the changes in your local repository to GitHub.
  git push origin master
 
Adding an existing project from GitHub to localusing the command line
  
 git clone https://path/tog/git/repo"

