---
title: Setup
---

## Data Sets

<!--
FIXME: place any data you want learners to use in `episodes/data` and then use
       a relative link ( [data zip file](data/lesson-data.zip) ) to provide a
       link to it, replacing the example.com link.
-->
Download the [data zip file](https://github.com/reconhub/learn/raw/master/static/data/linelist_20140701.xlsx) and unzip it to your Desktop

## Software Setup

### Install Rstudio

Install R and Rstudio <https://posit.co/download/rstudio-desktop/>

### Create a GitHub account

Create a GitHub account <https://github.com/>

### Install Git

::::::::::::::::::::::::::::::::::::::: discussion

### Follow software specific suggestions

Follow [happygitwithr recommendation](https://happygitwithr.com/install-git.html) for each Operating system.


:::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::: solution

### Windows

For [Windows](https://happygitwithr.com/install-git.html#install-git-windows)

:::::::::::::::::::::::::

:::::::::::::::: solution

### MacOS

For [MacOS](https://happygitwithr.com/install-git.html#macos)

:::::::::::::::::::::::::


:::::::::::::::: solution

### Linux

For [Linux](https://happygitwithr.com/install-git.html#linux)

:::::::::::::::::::::::::

### Install R packages

Install the following packages:

```r
if(!require("pak")) install.packages("pak")
pak::pak("gh")
pak::pak("usethis")
pak::pak("gitcreds")
pak::pak("FRBCesab/rcompendium")
pak::pak("cli")
pak::pak("pkgdown")
pak::pak("devtools")
pak::pak("tidyverse")
pak::pak("here")
pak::pak("lifecycle")
pak::pak("readxl")
pak::pak("incidence2")
pak::pak("rmarkdown")
pak::pak("knitr")
pak::pak("fs")
pak::pak("renv")
```

### Configure Git and GitHub

::: prereq

### Follow all these steps

#### 1. Verify your git configuration

```r
gh::gh_whoami()
```

```output
{
  "name": "Andree Valle Campos",
  "login": "avallecam",
  "html_url": "https://github.com/avallecam",
  "scopes": "gist, repo, workflow",
  "token": "gho_...AlAn"
}

```

#### 2. Get a situational report on your current Git/GitHub status:

```r
usethis::git_sitrep()
```

If you get a message similar to this output, follow the next step:

```error
✖ Token lacks recommended scopes:
  - 'user:email': needed to read user's email addresses
  Consider re-creating your PAT with the missing scopes.
  `create_github_token()` defaults to the recommended scopes.
✖ Can't retrieve registered email addresses from GitHub.
  Consider re-creating your PAT with the 'user' or at least 'user:email' scope.
```

#### 3. Create you GitHub token:

```r
usethis::create_github_token()
```

Check all of the following options:

![](../episodes/fig/git-token.png)

#### 4. Configure your token

Follow the [steps from happygitwithr](https://happygitwithr.com/https-pat.html):

```r
gitcreds::gitcreds_set()
```

```output
-> What would you like to do? 

1: Abort update with error, and keep the existing credentials
2: Replace these credentials
3: See the password / token

Selection: 2

```

Select option `2`

#### 5. Run again the situational report:

```r
usethis::git_sitrep()
```

```output
Git config (global)
• Name: 'Andree Valle'
• Email: 'avallecam@gmail.com'
• Global (user-level) gitignore file: <unset>
• Vaccinated: FALSE
ℹ See `?git_vaccinate` to learn more
• Default Git protocol: 'https'
• Default initial branch name: 'master'
GitHub
• Default GitHub host: 'https://github.com'
• Personal access token for 'https://github.com': '<discovered>'
• GitHub user: 'avallecam'
• Token scopes: 'delete_repo, gist, repo, user, workflow'
• Email(s): 'avallecam@gmail.com (primary)', 'andree.valle-campos@lshtm.ac.uk'
Git repo for current project
ℹ No active usethis project
```

#### 6. Verify your updated git configuration

```r
gh::gh_whoami()
```

```output
{
  "name": "Andree Valle Campos",
  "login": "avallecam",
  "html_url": "https://github.com/avallecam",
  "scopes": "delete_repo, gist, repo, user, workflow",
  "token": "ghp_...Jq2R"
}

```

:::

If you need any assistance installing the software, configuring Git and GitHub, or have any other questions about the workshop, please send an email to <andree.valle-campos@lshtm.ac.uk>

