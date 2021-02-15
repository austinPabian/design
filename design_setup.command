#1/bin/bash

cd -- "$(dirname "$BASH_SOURCE")"

rm -rf .git

touch .static

echo "#!/bin/bash\ncd -- \"\$(dirname \"\$BASH_SOURCE\")\"\n\ngit add -A && git commit -m \"Bada bing! Wit a pipe!.\" && git push github master" > sync.command

chmod +x sync.command

git init
git add -A
git commit -m ":tada: Initial commit"

git remote add github git@github.com:austinPabian/design

git push -f github master
