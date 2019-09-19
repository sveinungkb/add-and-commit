FROM alpine/git:1.0.7

LABEL "com.github.actions.name"="Add & Commit & Tag"
LABEL "com.github.actions.description"="Add & commit files from a path directly from GitHub Actions"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/sveinungkb/add-and-commit"
LABEL "homepage"="https://github.com/sveinungkb/add-and-commit"
LABEL "maintainer"="Sveinung Kval Bakken <sveinung.bakken@gmail.com>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
