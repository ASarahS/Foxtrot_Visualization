**Note**: This is a reproduction project as part of the MSR course 2021/22 at UniKo, CS department, SoftLang Team

**Team Foxtrot**
- Sarah Sajid
- Jona Löffler
- Ashutosh Mahajan

### **Aspect of the reproduction project**
We chose to reproduce some visualizations that can be found in
[Gorjatschev2021]. In order to achieve this, we adapted and extended the code
from the original repository.

Using our process, one can create the class map visualizations of section 5 for
any applicable Java project. All necessary data collection steps will be run
automatically.

### **Input data**
None necessay, the process fetches all necessary data by itself, based on the
original code in the [GitHub
repository](https://github.com/gorjatschev/applying-apis)

Some input data is present for the Novetta/CLAVIN project, but can be recreated
by running the process after deleting the `data` directory.

### **Output data**
Various figures can be found in the `data/output/visualization` directory after
running one of the `process/exampleX.sh` scripts.

### **Process delta**
Much of our process is directly taken out of the original repository, providing
a more streamlined interface for generating visualizations. We also provide more
detailed installation instructions of the software requirements.

Some of the filtering criteria on the repositories have been adjusted to allow
for running the visualization on arbitrary repositories:
- STARS\_LIMIT = 0 (was 100)
- CONTRIBUTOR\_LIMIT = 1 (was 2)
- COMMITS\_LIMIT = 0 (was 100)
- DEPENDENCIES\_LIMIT = 100 (was 30)
- FILES\_LIMIT = 1001 (was 1000)

To recreate the exact visualizations of the original paper (5.12-5.14), run the
script `process/example1.sh`. Detailed steps for reproduction are defined in the Implementation Section. The HTML visualizations need to be viewed in a
browser where one can drill down in to more detailed views. Clicking on the
element with the name `LazyAncestryGeoNameTest` will show the element that is
shown in the paper.

### **Output delta**
Screenshots for the Novetta/CLAVIN project are linked here
[5.12](data/output/visualiation/512.png)
[5.13](data/output/visualiation/513.png)
[5.14](data/output/visualiation/514.png)
[5.15](data/output/visualiation/515.png)

The content of the visualizations is identical, there are only cosmetic
differences like layout, font size and colors.


### **Implementation of replication**

Running this process requires no specific hardware or OS.

#### **Software Requirements**

**1. Java 11**: Can be set-up using these links: [MacOS](https://docs.oracle.com/en/java/javase/11/install/installation-jdk-macos.html#GUID-2FE451B0-9572-4E38-A1A5-568B77B146DE), [Windows](https://docs.oracle.com/en/java/javase/11/install/installation-jdk-microsoft-windows-platforms.html#GUID-C11500A9-252C-46FE-BB17-FC5A9528EAEB)

**2. Python**: [This link may be used](https://python.land/installing-python)


#### **Project requirements**

**1. Running the script** will install Python dependencies, create the required directories, compile and run the modified Java code, as well as run the
updated Python analysis and visualization code. Clone the repository and run the following command in main directory:
> sh process/example1.sh

**Example Scripts**
The repository contains some example scripts:
- `process/example1.sh` runs the process for [Novetta/CLAVIN](https://github.com/Novetta/CLAVIN)
- `process/example2.sh` runs the process for [garbagemule/MobArena](https://github.com/garbagemule/MobArena)
- `process/example3.sh` runs the process for [dashorst/dashboard](https://github.com/dashorst/dashboard)

**2. Optional**
- Running the script starts a python virtual environment by default. If you want to change this behavior, you can comment out the lines marked as 'Optional' in the process/run.sh file.
- If you use python3 to run python files, this can also be edited in the process/run.sh file

**3. Running project for other data**

One can run the process on any other applicable Java GitHub repository using the
following command:

> ./process/run.sh \<repository\> \<dependency1\> \<dependency2\>


### **Validation**
Check the output in the `data/output/visualization` directory.


### **Data**
Some input files are present in our repostory, but deleting the `data` folder
and recreating them will also work.

| Type      | File                                                                                           |
|:--------- |:---------------------------------------------------------------------------------------------- |
| Input     | `data/input/data/data_<repository>.csv`                                                        |
| Input     | `data/input/analyzed_data/class/api_proportion_class_<repository>.csv`                         |
| Input     | `data/input/analyzed_data/method/api_proportion_method<repository>.csv`                        |
| Input     | `data/input/analyzed_data/package/api_proportion_package<repository>.csv`                      |
| Input     | `data/input/analyzed_data/class/api_sets_<repository>.csv`                                     |
| Input     | `data/input/analyzed_data/method/api_sets_<repository>.csv`                                    |
| Input     | `data/input/analyzed_data/package/api_sets_<repository>.csv`                                   |
| Temporary | `data/input/characterization/characterization_<repository>_api.csv`                            |
| Temporary | `data/input/characterization/characterization_<repository>_mcrCategories.csv`                  |
| Temporary | `data/input/characterization/characterization_<repository>_mcrCategories_with_dep.csv`         |
| Temporary | `data/input/characterization/characterization_<repository>_mcrTags.csv`                        |
| Temporary | `data/input/characterization/characterization_<repository>_mcrTags_with_dep.csv`               |
| Output    | `data/output/visualization/visualization_<repository>_method_api.html`                         |
| Output    | `data/output/visualization/visualization_<repository>_method_api.pdf`                          |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrCategories.html`               |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrCategories.pdf`                |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrCategories_with_dep.html`      |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrCategories_with_dep.pdf`       |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrTags.html`                     |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrTags.pdf`                      |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrTags_with_dep.html`            |
| Output    | `data/output/visualization/visualization_<repository>_method_mcrTags_with_dep.pdf`             |

The placeholder <repository> is replaced by whatever repository one is analyzing.
The repository of the main running example is Novetta/CLAVIN, which means
<placeholder> is replaced with `Novetta_CLAVIN`.

## Additional work

To make use of another team's output, we chose to generate some visualizations
from the repositories collected by team Romeo. The data we used can be found in
`data/repositories_with_dependencies_romeo.csv`. Some of the resulting class map
can be found in the `data/visualizations` directory. To make this work, the
script `process/romeo.sh` reads the input file and executes our process on some
random collected projects.
