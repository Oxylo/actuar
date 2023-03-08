# actuar
Example package in R.

# 1. Installation
This section contains installation instructions, both for the package User and for the package Mantainer.

## 1.1 Installation instructions for the package User

1. Install the latest version of R suitable for your OS: https://cran.r-project.org/
2. Install the latest version of RStudio suitable for your OS: https://posit.co/download/rstudio-desktop/
3. Open RStudio and run the following code to install the actuar package: 

<pre><code>a simple
  indented code block
</code></pre>

## 1.2 Installation instructions for the package Mantainer

1. Perform steps 1, 2 and 3 from section 1.1
2. Open RStudio and run the following code to install the R development packages:

<pre><code>install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
</code></pre>

3. Optional: for building packages from source you need a compiler and some additional tools:

* Windows:  download from https://cran.r-project.org/bin/windows/Rtools/ and run the installer.

Important: when prompted to “Select Additional Tasks” *do not* select the box for “Edit the system PATH” but *do* select the box for “Save version information to registry”.

* Ubuntu: install R development tools:

<pre><code>
sudo apt install r-base-dev
</code></pre>
