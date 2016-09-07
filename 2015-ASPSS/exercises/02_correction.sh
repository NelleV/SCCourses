# Rename the file ``AUTHORS`` to ``CONTRIBUTORS`` using ``git mv`` and commit
# your changes
git mv AUTHORS CONTRIBUTORS
git commit -m "Renamed AUTHORS to CONTRIBUTORS"


# Now delete this file and commit your change.
git rm CONTRIBUTORS
git commit -m "removed CONTRIBUTORS"

# Use ``git log`` to see the history of the repository.
git log

# Modify the ``TODO`` file, and add it to the staging area.
cat >> TODO
New todo item
git add TODO

# Remove this file from the staging area.
git reset HEAD TODO

# Create a python script called power.py
touch power.py

# Add this to the staging area and commit it.
git add power.py
git commit -m "Added power.py"

# Now edit it again, and add the following function to the bottom of the file:
#    def square_root(x):
#        return np.sqrt(x)

cat >> power.py
def square_root(x):
    return np.sqrt(x)

# Use git checkout to remove the changes you've made to this file. You can
#  check what you have done using ``git status``.
git checkout power.py
git status
