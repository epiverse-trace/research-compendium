---
title: Setup
---

## Motivation

Have you ever wondered how cool would it be if you would be able to successfully: 

- __Reuse__ an analysis months or years later each time you need to revisit it?
- __Redo__ the analyses, figures or tables after correcting an error in the data or following a reviewer's recommendations?
- __Reuse__ data from other authors for a secondary analysis thanks to informative metadata on the primary study?

Sadly, most of the time, this isn't easy because: 

- __We__ do not remember how we did the analysis,
- __Redoing__ figures and tables is time-consuming,
- __Data__ is not readily available or unreadable today.

<!-- - How much time do we spend trying to implement a new analysis method based on the brief description provided in an article? -->

<!--Questions from [Rodriguez-Sánchez et al. 2016](https://revistaecosistemas.net/index.php/ecosistemas/article/view/1178)-->

<!--
A _reproducible workflow_ reduces errors and speeds up the process of re-running your analysis and auto-generating updated documents with the results.

!["A reproducible workflow". 1:44 minutes. Video by Ignasi Bartomeus (@ibartomeus) & Francisco Rodríguez-Sánchez (@frod_san).  CC-by, <https://youtu.be/s3JldKoA0zw?si=xRzgVJvOTX5LubxN>](episodes/fig/non-reproducible-workflow.png){alt='Video: A Non Reproducible Workflow'}
-->

In this lesson, you will learn how to improve your code's _reliability_, _usability_ and _sustainability_ for epidemic analysis with R packages. You will learn how to __add specific features__ to your R project to keep it as __Open__, __Reproducible__, and __Sustainable__ as possible!

![Open science, Sustainable software, and Reproducible analysis: Different and Complementary. Image by Bing, 2023, [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/), created with [Bing Image Creator powered by DALL·E 3](https://www.bing.com/create)](episodes/fig/open-sustainable-reproducible.jpeg){alt='A puzzle of three hexagon pieces, only showing the pieces, each with one of these words: OPEN, SUSTAINABLE, REPRODUCIBLE'}

::::::::::::::::: prereq

In this lesson, we will use R, Git, and GitHub. Some previous experience using [RStudio projects](https://support.posit.co/hc/en-us/articles/200526207-Using-RStudio-Projects) is expected, _but isn’t mandatory_.

For an introductory lesson on Git, please go to the [Version Control with Git in Rstudio](https://epiverse-trace.github.io/git-rstudio-basics/) lesson.

::::::::::::::::::::::::

<!--
## Data Sets

FIXME: place any data you want learners to use in `episodes/data` and then use
       a relative link ( [data zip file](data/lesson-data.zip) ) to provide a
       link to it, replacing the example.com link.

We will use data from an Ebola virus disease outbreak in a fictional country in West Africa:

- `linelist_20140701.xlsx`: a linelist containing case information up to the 1st of July 2014.

[Download this data file](https://github.com/reconhub/learn/raw/master/static/data/linelist_20140701.xlsx) and keep it in your Desktop.
-->

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

These installation steps could ask you `? Do you want to continue (Y/n)` write `y` and press ENTER. It can take up to 3 minutes to complete.

First, we strongly suggest installing the development versions of the `{rcompendium}` and `{rrtools}` packages, and others like `{usethis}` and `{renv}`, using the following code chunk:

```r
if(!require("pak")) install.packages("pak")

new <- c("FRBCesab/rcompendium",
         "benmarwick/rrtools",
         "usethis",
         "tidyverse",
         "here",
         "yaml",
         "renv")

pak::pak(new)
```

### Configure Git and GitHub

::: prereq

### Follow all these steps

In these steps, we will verify that you have:

- a correctly configured _token_, and
- a clean output when running `usethis::git_sitrep()`.

#### 1. Verify your git configuration

Use `gh::gh_whoami()` to check if your local git configuration recognizes:

- your name
- your GitHub account
- your _token_

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

If there is no `name`, `login`, or `html_url`, then you need to run:

```r
gert::git_config_global_set(name = "user.name",   value = "John Doe")
gert::git_config_global_set(name = "user.email",  value = "john.doe@domain.com")
gert::git_config_global_set(name = "github.user", value = "jdoe")
```

If you do not have a `token`, follow step number 3.

#### 2. Get a situational report on your current Git/GitHub status:

Use `usethis::git_sitrep()` to check if there is no `✖ ...` line in the output with an error message. 

An example with two errors is below:

```r
usethis::git_sitrep()
```

```error
✖ Token lacks recommended scopes:
  - 'user:email': needed to read user's email addresses
  Consider re-creating your PAT with the missing scopes.
  `create_github_token()` defaults to the recommended scopes.
✖ Can't retrieve registered email addresses from GitHub.
  Consider re-creating your PAT with the 'user' or at least 'user:email' scope.
```

The output shows that I had a _token_ but must fix its configuration. If you do not have a _token_ or get a similar error message, follow the next step. 

If you have an error message unrelated to creating a token, copy and paste this output in your issue report to the email at the end of this page.  


#### 3. Create your GitHub token:

Do this with `usethis::create_github_token()`. This function should redirect you to GitHub on your browser. Once there, check all the options in the figure below.

```r
usethis::create_github_token()
```

Check all of the following options:

![](../episodes/fig/git-token.png)

#### 4. Configure your token

To complete the configuration of your token use `gitcreds::gitcreds_set()` ([Bryan, 2023](https://happygitwithr.com/https-pat.html)), then accept that you want to `2: Replace these credentials`. Do this by writing the number `2` and press ENTER.

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

Paste your `token` to save it and complete this step.

#### 5. Run again the situational report:

Verify again that there is no `✖ ...` line in the output with an error message. The expected outcome should look like this:

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

If you still have an error, close Rstudio and open it again for changes to take effect.

If the error persist, copy and paste this output in your issue report to the email at the end of this page. 

#### 6. Two-factor authentication

If you have an error message related to Two-factor authentication, follow the [steps in this GitHub guide](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication).


:::

### Configure your R environment

::: prereq

### Follow all these steps

#### 1. Set the default Git branch name

Run the code chunk below:

```r
usethis::git_default_branch_configure(name = "main")
```

This step will homogenize the name of the default branch in our computers. We need this to make some auto-generated links work downstream.

#### 2. Add {rcompendium} credentials

Use `rcompendium::set_credentials()` to paste your name and personal information to the `.Rprofile` configuration file. 

Adapt the code chunk below to your name, family name, email, and ORCID. Adding your ORCID is optional.

```r
rcompendium::set_credentials(
  given = "Andree",
  family = "Valle-Campos",
  email = "avallecam@gmail.com",
  orcid = "0000-0002-7779-481X"
)
```

This function will automatically copy a line of code to the clipboard that starts with `options(...`, and open a file called `.Rprofile`. Paste the line of code in the file.
After this, close Rstudio and open it again for changes to take effect. 

You can access the content of the `.Rprofile` file at any time with `usethis::edit_r_profile()`.

:::

## Your Questions

If you need any assistance installing the software, configuring Git and GitHub, or have any other questions about the workshop, please send an email to <andree.valle-campos@lshtm.ac.uk>

