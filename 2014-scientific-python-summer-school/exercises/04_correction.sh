# Try deleting branch ``development`` using ``git branch -d development``.
#  What do you see ?
git branch -d development
# Git doesn't want me to delete the branch. It tells me I haven't merged the
# changes

# Merge the changes of branch ``development`` in ``master``.

git merge development

# Try to delete the branch ``development`` once again.
git branch -d development
# It now works. By default, git prevents me from deleting a branch d if the
# branch I am currently in doesn't contain all the history of branch d. If I
# really want to remove those changes, git indicates the command to use: git
# branch -D development. Never use this command by default. You may loose data
# as a result.
