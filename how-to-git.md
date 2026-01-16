git status                      # see what changed

git add .                       # stage everything (or stage specific files: git add path/file)

git commit -m "short: what you changed"   # create a commit

git pull --rebase origin main   # bring remote changes into your work (rebase keeps history linear)

git push origin main            # upload your commit



*example*

git add index.md
git commit -m "docs: add index.md"
git pull --rebase origin main
git push origin main
    
    
    
