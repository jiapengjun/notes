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
