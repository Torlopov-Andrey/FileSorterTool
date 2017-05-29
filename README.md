# FileSorterTool

Just simple tool for sort files in current folder.

![About](https://github.com/Torlopov-Andrey/FileSorterTool/blob/master/sort_demo.gif)

# Install

* setup gem
```
gem install file_sorter_tool
```

* Edit folder path in bash script.  Change `PATH` to folderpath where locate downloaded `Rakefile`, for example, if I clone project in `~/Tools/`, then I write this path `~/Tools/folder_sorter/`

```bash
#!/bin/bash
cwd=$(pwd)
#cd PATH
rake sort:do[$cwd]
```

* For  convenience, I made alias for command in bash_profile.

```
nano ~/.bash_profile
```

Write alias. Change path, into path where your bash script locate. For example, if I clone project in `~/Tools/`, and create bash script (`download_sort.bash`) in this directory, I write this path `~/Tools/downloads_sorter/folder_sorter.bash`
**(Most often I use this tool to sort download files)**
```bash
alias download_sort="sh PATH"
```

* Restart terminal

# How it use

1. Go to your folder
2. Write your alias command (in our case it's "download_sort").
3. That's all

Tools create folder with file extention name and move files into this folder.

**Important to know!**

If file already exists, SorterTool add index.

# Contacts

email: torlopov.andrey@gmail.com </br>
skype: torlopov.andrey
