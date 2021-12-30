**Note**: This is a reproduction project as part of the MSR course 2021/22 at UniKo, CS department, SoftLang Team

**Team Foxtrot**
Sarah Sajid
Jona Löffler
Ashutosh Mahajan

**Aspect of the reproduction project**
We chose to reproduce the visualizations of the Novetta/CLAVIN project that can
be found in [Gorjatschev2021].

**Input data**
The input data was provided in the corresponding [GitHub repository](https://github.com/gorjatschev/applying-apis) and was
copied to this repository's `data/input` directory.

**Output data**
Various figures can be found in the `data/output/visualization` directory after
running the `process/repositories_visualizer.py` script.

# TODO:
**Process delta**
How does your process differ from what’s described in the thesis or implemented in its repo? (Why?)

# TODO:
**Output delta**
How does your output differ ...? (What’s the significance of any differences observed?)

**Implementation of replication**

**Hardware and software requirements**
Running this process requires no specific hardware or OS.

Software setup steps:
1. (Optional but recommended) create and activate a Python virtual environment by running `python -m venv <dir>` and `source <dir>/bin/activate`.
2. Install the Python requirements from the `requirements.txt` file by running `pip install -r requirements.txt`.
3. Run `python process/repositories_visualizer.py` to see the results in `data/output/visualiation`

Troubleshooting
- It may be required to install Java 11 on your system. Newer versions are not supported by Apache Spark.
- Make sure to run the Python script from the root directory of the Git repository, as the script depends on relative paths. Running from inside the `process` directory will not work.

# TODO:
**Validation**
	Any sort of advice on how to check that the output of your process makes sense.

# TODO:
**Data**
	What input, output, or temporary data is assumed or produced by your process?
