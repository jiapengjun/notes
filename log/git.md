# Init to master
git checkout master
git pull

# RUN ONCE.
git branch pjia_brh

# RUN EACH UPDATE.
    git checkout pjia_brh
    git fetch
    git rebase origin/master 

    git add .
    git commit -m"" 
    git push

    ### PULL REQUEST AND MERGE. ###
    # then switch to master and pull the newest code.


# DELETE BRANCH
git branch -d pjia_brh          ## remove local branch  
git branch --delete pjia_brh

git push origin :pjia_brh       ## remove remote branch  
git push origin --delete pjia_brh
# on other machines
git fetch --all --prune


# Tutorial:
git init
git add readme.txt
git commit -m"write a readme file"

git status
git diff readme.txt

git log
git reset --hard HEAD^
gir reflog
git reset --hard commit_id

git diff HEAD -- readme.txt
git checkout -- readme.txt
git reset HEAD readme.txt

git remote add origin jiapengjun@github.com:jiapengjun/notes.git
git push -u origin master

git clone jiapengjun@github.com:jiapengjun/notes.git

git checkout -b dev
git checkout master
git merge dev
git branch -d dev

add in master/branch
