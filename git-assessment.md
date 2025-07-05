# 1. Initialize a new Git repository
git init

# 2. First commit
echo "Initial content" > file1.txt
git add file1.txt
git commit -m "first commit"

# 3. Second commit
echo "More content for file1" >> file1.txt
echo "New file for second commit" > file2.txt
git add file1.txt file2.txt
git commit -m "second commit"

# 4. Third commit
echo "Even more content" >> file1.txt
git add file1.txt
git commit -m "third commit"

# 5. Create and switch to the feature-branch, then make its commit
git branch feature-branch
git switch feature-branch # or git checkout feature-branch
echo "Feature specific content" > feature-file.txt
git add feature-file.txt
git commit -m "awesome feature"

# 6. Switch back to the main branch
git switch main # or git checkout main

# 7. Merge feature-branch into main
git merge feature-branch -m "Merge feature-branch into main" # This will generate the merge commit (gdzrah0 Merge)

# 8. Fourth commit on main (after the merge)
echo "Content after merge" >> file1.txt
git add file1.txt
git commit -m "fourth commit"

# Optional: To visualize the history
git log --all --decorate --oneline --graph
