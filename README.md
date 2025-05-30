# repositoryflow
Repository Flow
```
https://github.com/rzrasel/repository-flow.git
```

### Git Squash Commits

```rebase_root
git rebase -i --root
i
esc
wq

i
esc
wq

git push --force
```

### Delete Git Branch

```delete_git_branch
git branch -d <branch_name>
git branch -D <branch_name>

git push <remote_name> --delete <branch_name>

git push <remote_name> :<branch_name>
```

- The `-d` option is an alias for `--delete`
- The `-D` option is an alias for `--delete` `--force`

### Git Squash Commits

Step 1:
git rebase -i --root

Step 2:
<kbd>i</kbd>
<kbd>esc</kbd>
<kbd>:wq</kbd>

Step 4:
Change › `pick` to `s` ⇒ `squash`

Step 4:
<kbd>i</kbd>
<kbd>esc</kbd>
<kbd>:wq</kbd>

Step 5:
Codify all `commit` to `hash tag for comment out`

Step 6:
git push --force

### Rebase Root Alternative

git rebase -i HEAD~3            # Rebase last 3 commits

git rebase -i --root › git rebase -i abc123^           # Start from before a specific commit

### GitHub IO Page
- [Repository Flow](https://rzrasel.github.io/repository-flow/)
- [GitHub IO Page](https://rzrasel.github.io/repository-flow/)