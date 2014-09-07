# Create a new branch ``development``, using ``git branch development``.

git branch development

# Switch to that branch.

git checkout development

# Check in which branch you are using ``git branch``.

git branch

# Create a python script that prints the first 10 integers, and commit it.

vim integers.py
for i in range(10):
  print i

git add integers.py
git commit -m "Added integers script"

# Look at the history of your repository.
git log


# Switch to the branch ``master``, and look again at the history. What do you
#  see?

git checkout master
git log
# I don't see anything. The history has changed in the branch development, but
# not the branch master.
