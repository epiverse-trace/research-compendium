---
title: 'Definitions'
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How can I define Reliability, Usability and Sustainability?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Define the concepts of Open science, Reproducible research, and Sustainable software.

- Define related concepts like Reliability and Usability.

- Define related features for each concept.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Three introductory concepts informed our approach to this material.

### Open science

Definition:

- Make data inputs, software, and data outputs freely available by publishing all of them with open licences ([Irving et al. 2021](https://merely-useful.tech/py-rse/index.html#intro-big-picture)), to facilitate project reuse.

- Also make their dissemination available to any member of an inquiring society, from professionals to citizens ([ORION Open Science, 2020](https://www.orion-openscience.eu/index.php/resources/open-science)), to improve its transparency and public ownership.

Related feature:

- _Open Licence_: An open licence that permits reuse using MIT or GPL for software ([Choose a License, 2023](https://choosealicense.com/)) and CC BY or CC0 for data, prose and other creative products ([Creative Commons, 2023](https://creativecommons.org/about/cclicenses/), [Irving et al. 2021](https://merely-useful.tech/py-rse/glossary.html#open_license)).

- _DEI_: Diversity, Equity, and Inclusion. There are four CHAOSS’s metrics for projects: Project Access, Communication Transparency, Newcomer Experience, Inclusive Leadership. ([The GitHub Blog, 2023](https://github.blog/2023-06-07-announcing-the-all-in-chaoss-dei-badging-pilot-initiative/))

### Reproducible research

Definition:

- Ensure that anyone with access to data inputs and software can feasibly generate the data outputs, both to check or build on them. ([Irving et al. 2021](https://merely-useful.tech/py-rse/glossary.html#open_license))

- Practice of describing and documenting the research process in such a way that another researcher can re-run the software on the same data input to get the same data outputs.

Related feature:

- _Documentation_: Software descriptions structured in four types with complementing purposes: tutorials, how-to guides, technical references, and explanations. ([Documentation System, 2023](https://documentation.divio.com/)) It includes documentation strings in one or two lines using active verbs to describe how inputs turn into outputs. ([Irving et al. 2021](https://merely-useful.tech/py-rse/documentation.html))

Related concepts:

- _Reliability_: Result consistency across many repetitions of the same experiment. ([Dymocks Tutoring, 2022](https://www.dymockstutoring.edu.au/scientific-skills-accuracy-validity-and-reliability/))

- _Usability_: Capacity to provide conditions to perform the tasks safely, effectively, and efficiently. ([Wikipedia, 2023](https://en.wikipedia.org/wiki/Usability))

### Sustainable software 

Definition:

- The ease with which to maintain and extend rather than replace. ([Irving et al. 2021](https://merely-useful.tech/py-rse/index.html#intro-big-picture))
It depends on the quality of the software, the skills of the potential maintainers, and if users can afford to keep up to date (how much the community is willing to invest).

Related features:

- _Modular code_: Build programs out of short, single-purpose functions with clearly-defined inputs and outputs ([Wilson et al, 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec005))

- _Unit testing_: Small test of one particular feature of a piece of software. ([Wilson et al, 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec027))

- _Version control_: Keeping track of changes that you or your collaborators make to data and software. ([Wilson et al, 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec014))

- _Community around software_: Users and collaborators that can communicate effectively with maintainers given the software documentation and by public or private platforms like chat channels, video conferencing, and more. ([Wilson et al, 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec007))

## How to use these concepts?

Often used interchangeably but use them differently can help to differentiate the characteristics of a project ([Irving et al. 2021](https://merely-useful.tech/py-rse/index.html#intro-big-picture)):

- We can have open science projects without documentation, thus not reproducible.

- We can have an automated and documented project not open to the public, thus not open science.

- We can have open and reproducible software but lack incentives for maintainers, thus not sustainable.


::::::::::::::::::::::::::::::::::::: keypoints 

- The definitions of Open science, Reproducible research, and Sustainable software help us identify their specific software features. 

- Differentiating these concepts helps us to differentiate the characteristics of a project.

::::::::::::::::::::::::::::::::::::::::::::::::

