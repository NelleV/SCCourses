# Create a github project.
# Add the url of the project as a remote called ``my_repository``.

git remote add my_repository url

# Push your changes to github:
#  ``git push my_repository master``

git push my_repository master

# Check on github that you have indeed pushed your changes.
# Fetch the changes from the remote ``origin``.

git fetch origin

# Merge the changes from ``origin/master`` to your local master branch (there
#  may be a conflict - if so, resolve it).

git merge origin/master

# Push the new changes to your remote called ``my_repository``.
git push my_repository
