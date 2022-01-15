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
- FILES\_LIMIT = 1000 (was 1000)

To recreate the exact visualizations of the original paper (5.12-5.14), run the
script `process/example1.sh`. The HTML visualizations need to be viewed in a
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

#### **Hardware and software requirements**
Running this process requires no specific hardware or OS.

Software Requirements
- Java 11
- Python

The repository contains some example scripts:
- `process/example1.sh` runs the process for [Novetta/CLAVIN](https://github.com/Novetta/CLAVIN)
- `process/example2.sh` runs the process for [garbagemule/MobArena](https://github.com/garbagemule/MobArena)
- `process/example3.sh` runs the process for [dashorst/dashboard](https://github.com/dashorst/dashboard)

Running the scripts will install Python dependencies, create the required
directories, compile and run the modified Java code, as well as running the
updated Python analysis and visualization code.

One can run the process on any other applicable Java GitHub repository using the
following command:

> ./process/run.sh <repository> <dependency1> <dependency2>

#### **Validation**
Check the output in the `data/output/visualization` directory.

#### **Data**
Some input files are present in our repostory, but deleting the `data` folder
and recreating them will also work.

| Type      | File                                                                                           |
|:--------- |:---------------------------------------------------------------------------------------------- |
| Input     | `data/input/data/data\_<repository>.csv`                                                       |
| Input     | `data/input/analyzed\_data/class/api\_proportion\_class\_<repository>.csv`                     |
| Input     | `data/input/analyzed\_data/method/api\_proportion\_method<repository>.csv`                     |
| Input     | `data/input/analyzed\_data/package/api\_proportion\_package<repository>.csv`                   |
| Input     | `data/input/analyzed\_data/class/api\_sets_<repository>.csv`                                   |
| Input     | `data/input/analyzed\_data/method/api\_sets_<repository>.csv`                                  |
| Input     | `data/input/analyzed\_data/package/api\_sets\_<repository>.csv`                                |
| Temporary | `data/input/characterization/characterization\_<repository>\_api.csv`                          |
| Temporary | `data/input/characterization/characterization\_<repository>\_mcrCategories.csv`                |
| Temporary | `data/input/characterization/characterization\_<repository>\_mcrCategories\_with\_dep.csv`     |
| Temporary | `data/input/characterization/characterization\_<repository>\_mcrTags.csv`                      |
| Temporary | `data/input/characterization/characterization\_<repository>\_mcrTags\_with\_dep.csv`           |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_api.html`                      |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_api.pdf`                       |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrCategories.html`            |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrCategories.pdf`             |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrCategories\_with\_dep.htm`l |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrCategories\_with\_dep.pdf`  |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrTags.html`                  |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrTags.pdf`                   |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrTags\_with\_dep.html`       |
| Output    | `data/output/visualization/visualization\_<repository>\_method\_mcrTags\_with\_dep.pdf`        |

The placeholder <repository> is replace by whatever repository one is analyzing.
The repository of the main running example is Novetta/CLAVIN, which means
<placeholder> is replace with `Novetta_CLAVIN`.
