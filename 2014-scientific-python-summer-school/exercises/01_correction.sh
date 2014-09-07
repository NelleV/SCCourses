# Clone the repository: ``git://github.com/NelleV/SCBC-data.git``

# First, go into my home directory
cd
# Create a folder called git_exercises
mkdir git_exercises
# Clone the git repository
git clone git://github.com/NelleV/SCBC-data.git

# Configure your git environment:
#    - ``git config user.name "Your Name Comes Here"``
#    - ``git config user.email you@yourdomain.example.com``
#    - ``git config color.ui auto``

git config user.name "Nelle Varoquaux"
git config user.email nelle.varoquaux@ensmp.fr
git config color.ui auto

# Check your configuration settings by using ``git config --list``

git config --list

# Create a new file ``AUTHORS`` and add it.

touch AUTHORS
git add AUTHORS

# Check what the status of your repository is, by using ``git status``.

git status
# The file AUTHORS should be in green

# Save the state of your repository with ``git commit``

git commit -m "Added file AUTHORS"

# Now edit the ``AUTHORS`` file, and check the status of the repository.

cat Nelle >> AUTHORS
git status
# The file AUTHORS should now be red

# Add this file and commit it.
git add AUTHORS
git commit -m "Added Nelle to author list"

# Type ``git log`` in the repository. What do you see?
git log
# you shouldn't see any files
