An introduction to Git
================================================================================

----

Why do I need version control ?
================================================================================

As researchers, you want:

- reproducible research
- fast and efficient research

------

A story told by filenames
================================================================================

.. image:: images/version_control.gif

----


Version control
================================================================================

Version control system:

- keeps all the historical versions for easy tracking.
- benefits team collaboration.
- improves our efficiency.
- can be used as a data center, which makes build automation possible.

----

Creating a project
================================================================================

- Initializing a new project::
    ``nelle@Titanic> git init``
    ``Initialized empty Git repository in /home/nelle/Projets/SCBC/git-test/.git/``


- Initializing from an existing project::
    ``$ git clone git://github.com/schacon/grit.git``

----

Configuring Git
================================================================================

- Locally

- User-wide

- Globally

----

Configuring git
================================================================================

- Your identity::
    ``$ git config --global user.name "Your Name Comes Here"``
    ``$ git config --global user.email you@yourdomain.example.com``

- Setting your editor::
    ``$ git config --global core.editor emacs``

- Checking your settings::
    ``$ git config --list``

----

Exercise
================================================================================

- Clone the repository: ``git://github.com/NelleV/SCBC-data.git``
- Configure your git environment:
    - ``git config user.name "Your Name Comes Here"``
    - ``git config user.email you@yourdomain.example.com``
    - ``git config color.all auto``
- Check your configuration settings by using ``git config --list``

----

Working alone
================================================================================

----

Saving a snapshot
================================================================================


- Tracked files: files that were in the last snapshots

  - unmodified
  - modified
  - staged

- Untracked files: all the other files

----

File status lifecycle
================================================================================


.. image:: images/git_file_status_lifecycle.png

--------

Commands
===================

- ``git add``: adds a file to the staging area::
    ``nelle@Titanic> git add README``

- ``git commit``: commits a file::
    ``nelle@Titanic> git commit -m "My commit message"``

- ``git status``: show the status of the files of the repository

- ``git log``: Show commit log

----

Exercices
================================================================================

- Create a new file ``AUTHORS`` and add it to the staging area
- Check what the status of your repository is, by using ``git status``.
- Commit the AUTHORS file
- Now edit the TODO file, and check the status of the repository.
- Add this file to the staging area and commit it
- Type ``git log`` in the repository. What do you see?
- Now, edit the ``README`` file, and add it to the staging area, then edit it
  again, and check the status of the file. What do you see ?
- Commit all your changes.

----

Cancelling
================================================================================
- git reset
- git checkout

----

----

Branches
================================================================================
- branch
- merge

----

Exercices

-----

Github
================================================================================

----

Updating a repository
================================================================================

git push
git fetch
git merge

----

Working with many people
================================================================================

----

Remotes
================================================================================

adding, deleting remotes. updating a repository with someone elses.


----

Exercices

-----

Setting up a git repository on a server
================================================================================


