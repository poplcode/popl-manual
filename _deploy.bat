cd D:\_my\Dropbox\src\github\poplcode\popl-manual
rd /s /q _book
rd /s /q docs

call gitbook install
call gitbook build

call xcopy _book\*.* D:\_my\Dropbox\src\github\poplcode\poplcode.github.io\ /e /h /k /exclude:_deploy.bat+.gitignore /Y

git clean -fx node_modules
git clean -fx _book

git add .
git commit -a -m "Update docs"
git push -u origin master

cd D:\_my\Dropbox\src\github\poplcode\poplcode.github.io
git add .
git commit -a -m "Update docs"
git push -u origin master 