**Note**: This is a reproduction project as part of the MSR course 2021/22 at UniKo, CS department, SoftLang Team

**Team Foxtrot**
- Sarah Sajid
- Jona Löffler
- Ashutosh Mahajan

### **Aspect of the reproduction project**
We chose to reproduce the visualizations of the Novetta/CLAVIN project that can
be found in [Gorjatschev2021].

### **Input data**
The input data was provided in the corresponding [GitHub repository](https://github.com/gorjatschev/applying-apis) and was
copied to this repository's `data/input` directory.

### **Output data**
Various figures can be found in the `data/output/visualization` directory after
running the `process/repositories_visualizer.py` script.

### **Process delta**
Most parts of our process are directly taken out of the original repository, only making sure the new paths work for the reproduction.
We also provide more detailed installation instructions of the software requirements.

To recreate the exact visualizations of the original paper (5.12-5.14), the HTML
visualizations need to be viewed in a browser where one can drill down in to
more detailed views. Clicking on the element with the name
`LazyAncestryGeoNameTest` will show the element that is shown in the paper.

### **Output delta**
Screenshots are linked here [5.12](data/output/visualiation/512.png)[5.13](data/output/visualiation/513.png)[5.14](data/output/visualiation/514.png)[5.15](data/output/visualiation/515.png)

The content of the visualizations is identical, there are only cosmetic differences like layout, font size and colors.

### **Implementation of replication**

#### **Hardware and software requirements**
Running this process requires no specific hardware or OS.

Simply run the start script `./run.sh`.

Individual software setup steps:
1. (Optional but recommended) create and activate a Python virtual environment by running `python -m venv <dir>` and `source <dir>/bin/activate`.
2. Install the Python requirements from the `requirements.txt` file by running `pip install -r requirements.txt`.
3. Run `python process/repositories_visualizer.py` to see the results in `data/output/visualiation`. The script might even open the output in your default web browser.

Troubleshooting
- It may be required to install Java 11 on your system. Newer versions are not supported by Apache Spark.

#### **Validation**
Check the output in the `data/output/visualization` directory.

#### **Data**
Identical to the process in the original repository, the process assumes the
following files to be present:

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
The repository of the main running example is Novetta/CLAVIN, which means <placeholder> is replace with `Novetta_CLAVIN`.
