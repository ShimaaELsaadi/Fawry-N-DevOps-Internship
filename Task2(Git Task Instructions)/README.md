# Git Task Documentation

## Overview

This task demonstrates branch management, commit operations, reset & reflog usage, and rebasing in Git. The repository contains two branches: `develop` and `alpha`. Various commits and operations were performed to explore Git functionalities.

---

## Branch Setup

- Created two branches:  
  - `develop`  
  ![add develop branch](screenshots/createdevelop.png)  
  - `alpha`
  ![add alpha branch](screenshots/createalpha.png) 

---

## Part 1: Work on `develop` Branch

1. Switched to the `develop` branch:
    ```bash
    git checkout develop
    ```
    ![switch to develop branch](screenshots/developswitch.png)  
    
2. Created two files `file1` and `file2` and added content:
    ```bash
    echo "Content for file1" > file1
    echo "Content for file2" > file2
    ```
    ![file1 and file2 content](screenshots/file1file2.png) 
3. Committed files separately:
    ```bash
    git add file1
    git commit -m "first-commit"
     ```
    ![first commit](screenshots/firstcommit.png) 
     ```
    git add file2
    git commit -m "second-commit"
    ```
     ![second commit](screenshots/secondcommit.png) 
4. Viewed log in one-line format:

    ![git log --oneline](screenshots/secondcommit.png)

5. Used `git reset --hard HEAD~1` to move back to the first commit:

    ```bash
    git reset --hard HEAD~1
    ```

    ![git reset](screenshots/reset-hard.png)

6. Used `git reflog` to find previous commit, then reset back:

    ```bash
    git reflog
    git reset --hard Head@{1}
    ```
   

---

## Part 2: Work with `alpha` Branch

1. Switched to `alpha` branch and created `file3`, committed:

    ```bash ![git reflog](screenshots/reflog.png)  
    git checkout alpha
    ```
    ![switch to alpha branch](screenshots/switchalpha.png)  

    ```
    echo "Content for file3" > file3
    git add file3
    ```
    ![file3](screenshots/file3.png)  

    ```
    git commit -m "third-commit"
    ```
    ![third commit](screenshots/3commit.png) 
2. Switched back to `develop`, created `file4`, and committed:

    ```bash
    git checkout develop
    ```
    ![switch to develop branch](screenshots/switchdevelop.png) 

    ```
    echo "Content for file4" > file4
    git add file4
    ```
    ![file4](screenshots/file4.png)  

    ```
    git commit -m "fourth-commit"
    ```
    ![fourth commit](screenshots/4commit.png) 

3. Switched again to `alpha` and visualized log graph:

    ```bash
    git checkout alpha
     ```
    ![switch to alpha branch](screenshots/switchalpha.png)  

    ```
    git log --oneline --decorate --all --graph
    ```

    ![log graph](screenshots/loggraph.png)

---

## Part 3: Rebase Operation

1. Rebasing `develop` onto `alpha`:

    ```bash
    git rebase develop
    ```

    ![Rebase result](screenshots/rebase.png)

---

## Summary

- Created and worked with multiple branches (`develop`, `alpha`).
- Performed commits, resets, and used reflog to recover commits.
- Visualized branch history using `git log --graph`.
- Executed a rebase operation to integrate changes.

---

**Screenshots:** All screenshots are stored in the `screenshots` folder.

---
## Related Repository

You can find the related repository for this task here:  
[Git-Task-instructions](https://github.com/ShimaaELsaadi/Git-Task-Instructions.git)
