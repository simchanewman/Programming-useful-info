# Git tips and info

**Note: The following commands were executed within a __Git Bash__ Terminal on Windows 10**

## 1.1.1 Fork a repository

Fork the repository by selecting __Fork__ at the top of the repository page. This will create a replicated copy of the repository in your __GitHub__ account.

*Note: This step is only required if you want to make a copy of somsone elses repository otherwise this step can be skippedg.*

## 1.1.2 Clone repository locally

In your __GitHub__ account go to the repository you would like to clone, click on __Code__ and seleectt the __Copy to clipboard__ icon.

In a terminal execute the following git command:

```Git
git clone "url just copied"
```

The clone will complete and you will be able to use the following commands to get a complete list of directories that are cloned locally:

```Git
ls
```
```
ls -lrt
```

## 1.1.3 Navigating branches

### 1.1.3.1 Creating a new branch

*Note: If you would like to use an already exisiting branch please see [__Section 1.1.3.2__](#1.1.3.1-creating-a-new-branch)*

Create a new branch by executing the following command:

```Git
git switch c- your-branch-name
```

### 1.1.3.2 Switching to an existing branch

*Note: If you would like to create a new branch please see [__Section 1.1.3.1__](#1.1.3.2-switching-to-an-existing-branch)*

Select an exisiting branch by executing the following command:

```Git
git checkout branch-name
```

*Note: If you have just updated a branch name on __GitHub__ online and would like to update this locally please see [__Section 1.2.2__]()*

# 1.2 - Edit and changes to repositories (locally and remotely)

## 1.2.1 Delete a local repository

After you are done with the repository locally you may want to delete it to free up some space or to clean the environment. Navigate into the directory that you want cleaned and execute the following command:

```Git
rm -rf .git
```

# 1.2.2 Rename a branch remotely

# 1.2.3 Update a branch locally if named remotely

To update the branch name if it was chnaged locally execute the following commands:

