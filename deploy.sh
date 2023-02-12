# production build
#npm run build

# cd ../jiaweizhang.github.io
# pwd
# git rm -rf .
# git clean -fxd
# pwd 

# # copy folder over
# cp -rf ../website/dist/* .
# cp ../website/CNAME .
# pwd 

# git add .
# git commit -m "Added commit"
# pwd 
# git push -f
# pwd 
# cd ../website
# pwd 

git branch deployment
git checkout deployment
git reset $(git commit-tree HEAD^{tree} -m "A single commit")
git push origin2 deployment:master --force
git checkout main
git branch -D deployment