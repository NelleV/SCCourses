An introduction to Git
================================================================================

----

Setting up Git
================================================================================

----

Creating a project
================================================================================


- Initializing a new project::
    ``$ git init``

    ``Initialized empty Git repository in /home/nelle/Projets/SCBC/git-test/.git/``


- Initializing from an existing project::
    ``$ git clone http://github.com/schacon/grit.git``

----

Configuring Git
================================================================================


.. TODO

- **Locally**: only the git repository you are working on will be affected::
    ``git config [options]``

- **User-wide**: the user's default configuration will be modified in ``~/.git/config``::
    ``git config --global [options]``

- **Globally**: system-wide configuration: all users are going to be affected::
    ``git config --system [options]``


----

Configuring git
================================================================================

- Your identity::
    ``$ git config --global user.name "Your Name Comes Here"``

    ``$ git config --global user.email you@yourdomain.com``

- Setting your editor::
    ``$ git config --global core.editor vim``

- Checking your settings::
    ``$ git config --list``

----

Saving snapshots
================================================================================

----

A few commands
================================================================================

- ``git add``: adds a file to the snapshot we want to take::
    ``$ git add README``

- ``git commit``: save all the files we added to the snapshots::
    ``$ git commit -m "My commit message"``

- ``git status``: show the status of the files of the repository

- ``git log``: show commit log

-----

File status
================================================================================

- Tracked files: files that were in the last snapshots. They can be in 3
  different states:

  - unmodified
  - modified
  - staged

- Untracked files: all the other files

-----


File status lifecycle
================================================================================


.. image:: images/git_file_status_lifecycle.png


.. raw:: html

  <span class="references">

Pro Git Boot, by Scott Chacon: http://git-scm.com/book

.. raw:: html

   </span>

----

Deleting and moving files
================================================================================

- ``git rm``: Removes files from the working tree::
      ``git rm FILENAME``

- ``git mv``: Move or rename a file or a directory::
      ``git mv FILENAME TARGET``

--------

Canceling operations
================================================================================

- ``git reset HEAD``: unstages filename::
    ``$ git reset HEAD filename``

- ``git reset --soft HEAD^``: uncommits the last commit

- ``git checkout``: unmodifies an unstaged file
    ``$ git checkout -- filename1 filename2``


-------

Branching
================================================================================

----

Commits are repository snapshots.
================================================================================

.. image:: images/git_0-300dpi.png
   :scale: 25%

----

A branch is a pointer to a commit.
================================================================================

.. image:: images/git_1-300dpi.png
   :scale: 25%

----

So we can have many branches !
================================================================================

.. image:: images/git_2-300dpi.png
   :scale: 25%

----

But how to know in which branch we are ?
================================================================================


.. image:: images/git_3-300dpi.png
   :scale: 25%

----

We can switch branches.
================================================================================


.. image:: images/git_4-300dpi.png
   :scale: 25%

----

And commit in a branch.
================================================================================

.. image:: images/git_5-300dpi.png
   :scale: 25%

----

Again...
================================================================================

.. image:: images/git_6-300dpi.png
   :scale: 25%

----

And switch branches
================================================================================

.. image:: images/git_7-300dpi.png
   :scale: 25%

----

The code can diverge.
================================================================================

.. image:: images/git_9-300dpi.png
   :scale: 25%

----

Commands
================================================================================

- ``git branch``: manages branches

    - ``git branch``: lists the branches of the local repository
    - ``git branch [branch_name]``: creates a branch
    - ``git branch -d [branch_name]``: deletes a branch

- ``git checkout``: moves to a branch:

  - ``git checkout [branch_name]``: moves to a branch
  - ``git checkout -b [branch_name]``: creates and moves to the branch ``branch_name``

----


Merging
================================================================================

-----

We had two branches
================================================================================

.. image:: images/git_10-300dpi.png
   :scale: 20%

----

Now, let's merge branch test on master
================================================================================

.. image:: images/git_11-300dpi.png
   :scale: 20%

----

And we can continue working
================================================================================

.. image:: images/git_12-300dpi.png
   :scale: 20%

----

Commands
================================================================================

- ``git merge`` - join developments history together
- ``git merge [branch_name]``: merges [branch_name] onto current branch

----

Dealing with conflicts
================================================================================

When a conflict emerges, you must **manually** edit the files::

    <<<<<<< HEAD:calc.py
    print 'the average is', sum(x) / float(len(x))
    print 'sumsqdiffs is', sum(diffs)
    =======
    avg = sum(x) / float(len(x))
    sumsqdiffs = sum(diffs) / float(len(x))

    print 'average is', avg, 'and sumsqdiffs is', sumsqdiffs
    >>>>>>> edgier:calc.py

----

Undo a merge or pull
================================================================================

- ``git reset --hard HEAD``: if you tried to pull or merge, and it resulted in
  a lot of conflicts you don't want to deal with.
- ``git reset --hard ORIG_HEAD`` : you merged a branch which resulted in a
  fast forward, and you want to cancel it.


-------

Working with a server
================================================================================

----

Remotes
================================================================================

Remote repositories are versions of your project that are hosted on the
Internet or network somewhere.

- ``git remote`` lists the remote servers you have configured.
  Tip: For more verbosity, add ``-v`` option.

- ``git remote add name url``: adds the url as a remote
- ``git remote rm name``: remove the remote ``name``

----

Github
================================================================================

.. image:: images/github.png

----

Updating a repository
================================================================================

- ``git fetch [remote-name]``: fetches the branches on the remote. The branches
  from that remote are then accessible locally in
  ``[remote-name/branch-name]``
- ``git push [remote-name] [branch-name]``: pushed ``[branch-name]`` onto
  remote ``[branch-name]``
- ``git merge [branch-name]``: merges ``[branch-name]`` into the current
  branch

----

Github's workflow
================================================================================

----

Private git repositories
================================================================================

----

Having private git repositories
================================================================================

- ``Github`` 6$/month accounts
- Setting up a repository on a server

----

Setting up git on a server
================================================================================

In 3 commands:

  - ``git clone --bare --shared my_project my_project.git``
  - ``scp -r my_project.git user@git.example.com:/opt/git``
  - ``git clone user@git.example.com:/opt/git/my_project``

----

Tags
================================================================================

------

Tagging
=============

- **Lightweighted**: pointer to a commit

  - ``git tag v1.4-lw``

- **Annotated:** contains tagger name, e-mail, date, a message, can be signed and
 verified

    - ``git tag -a v1.4 -m 'my version 1.4'``
    - ``git tag -s v1.4 -m 'my version 1.4'``

------

Searching for tags
===================

- ``git tag``: lists the tags in alphabetical order

- ``git tag -l 'v1.4.2.*'``: search tags with a specific pattern

- ``git show v1.4``: displays information on the tag

------

Stashing
===========================

-----

What is stashing?
====================

Used to record the current state of the repository and the index, but switches
back to a clean working directory:

  - saves the local modifications away
  - reverts back to HEAD.


-----

Stashing
==========

- ``git stash save <message>`` : creates a new stash
- ``git stash list`` : lists all the stashes
- ``git stash show <stash_id>`` : shows the stash as a diff
- ``git stash pop`` : apply the last stash
- ``git stash apply <stash_id>`` : apply the ``stash_id``

----

When is this useful ?
=====================

- When benchmarking a patch (was it faster before or after?).
- When debugging a patch (was it buggy before?).
- Before merging or rebasing.

-----

Rebasing
----

Rewriting the last commit
================================================================================

- ``git commit --amend``: allows to change the last commit
- ``git commit --amend --reset-author`` : changes the author of the last commit


-------

Rewriting more than the last commit
================================================================================

- ``git rebase -i HEAD~3``
- ``git rebase -i <commit_id>``


----

Using rebase to have a linear history
===============================================================

Assume you have created a branch from master, but master has moved forward.
Merging will create a commit. To avoid this, you can "rebase master onto your
branch"

- ``git rebase master`` or ``git rebase master branch_name``


**Never rebase a branch onto master!!**

----

Interactive stashing
====================


-----

Interactive stashing
=======================

Allows to interactively stash files:

- ``git add -i``


-----

Using git with an svn repository
======================================

You can use git with an svn repository:

- First, install svn and git-svn
- Clone the repository: ``git svn clone url``
- To push to the server: ``git svn dcommit``
- To pull from the server: ``git svn rebase``

------

Thank you for your attention
================================================================================
