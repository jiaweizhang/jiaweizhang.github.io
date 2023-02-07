# production build
npm run build

cd ../jiaweizhang.github.io
git rm -rf .
git clean -fxd

# copy folder over
cp -rf ../website/dist/* .
cp ../website/CNAME .

git add .
git commit -m "Added commit"

git push -f

cd ../website