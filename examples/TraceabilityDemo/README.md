# Simulation Task Credibility Information and Metadata

> Template and example

Here is the list of main chapters, which you can use to navigate

* **[1. Introduction](#1-Introduction)**
* **[2. Information about example (Context)](#2-Context)**
* **[3. Credibility Information according to phases of simulation process](#3-Credibility-Information-according-to-phases-of-simulation-process)**
* **[4. Additional Information](#4-Additional-Information)**

## 1\. Introduction

> ⚡ *The term credibility generally describes the quality to elicit trust in the results.* ⚡

The template consist of two main chapters

* Information about example **(Context)**
* Credibility information according to phases of simulation process (CSP)

**Usage**
please add in chapter Information about example the information, you can also add information
also add or modify the information topics, explanation topics according to your examples

## 2\. Information about example \(Context\)

> ⚡ *Rule #1: "There is no credibility without context!"* ⚡

Without any context information, there is very little I can do. So, let's collect them together!

### 2.1 Name of Company anonymized

CompanyZ -> PartnerAA

```Partner BCf
```

### 2.2 Goal, objectives of simulation

Short Explanation of goal, objectives of simulation…

```Preselection of a DC-Motor for window-lifter application
```

### 2.3 Product Domain of simulated elements

E-Motor, ECU, SW, drivetrain,…

```DC-Motor for window-lifter application
```

### 2.4 Abstraction level of simulation

causal (system (FMI)), acausal (electr., hydraulic Network), Geometry (i.e. FEM)

```system simulation with FMU
```

### 2.5 Criticality of usage of simulation, Credibility "level"

roughly description (estimation, part of continuous integration,…).

```roughly estimation, potential damage less 20 Person day
```

### 2.6 Credibility "level"

If you use credibility levels, please describe here. See more at the end of file

```Example of DC motor could be be a level B in a scale from A-D. see more at the end of file
```

Now, buckle up! It's time for the questions! :-)

## 3\. Credibility Information according to phases of simulation process \(CSP\)

> ⚡ *For structuring of the credibility information the CSP schema is used"* ⚡

### 3.1 Analysis, Objectives

Quality aspects according to the criticality of the decision of the engineering task

```Potential risk and damage in case of misjudgement limited (additional development effort < 4 person weeks).
```

```Sufficient validation of the results and tools used by expert opinion and plausibility tests.
```

```Proof of the basic applicability of the motor is required before further development work is required.
```

### 3.2 Requirments

Specific quality requirements for the simulation models

```Specific test for model for mechanical part: Tests with -4, -2, 0, 2, 4 Nm, in combination with -2, -1, 0, 1, 2 Nm load simulation until +/- 2000 rad/s are achieved.
```

```Sufficient validation of the results and tools used by expert opinion and plausibility tests.
```

Specific quality requirements for the parameters

```Assurance of the results and used resources by expert assessment is sufficient.
```

Specific quality requirements for simulation environment

```Assurance of the results and used resources by expert assessment and plausibility tests is sufficient.
```

### 3.3 Design Specification

Specific quality design specifications for the models

```Quality assurance: Specific tests for model in environment specified in simulation setup: Tests with -48 V, -24 V, 0 V, 24 V, 48 V, in combination with -2, -1, 0, 1, 2 Nm load. Plausibility check with expert opinion and comparison with static end values.
```

```The following checks should be carried out on the sub-model for the mechanical part: If 0.5 Nm is applied to M, the speed has a PT1 curve. Is the stationary final speed with friction 0, M/d at d = 0.001 and 0.002 Nms/rad.
```

```The checks should be carried out in the Modelica environment and the environment specified in the simulation setup.
```

Rationale / Reasons

```The same approach was used successfully in similar projects. The modeling approach is quasi standard for a simple modeling of a DC motor.
```

### 3.4 Implementation

Procedure documentation with quality assurance

```The electrical part of the DC motor and stimuli block comes with documentation as FMUs from library. The mechanical part of the DC motor is implemented and tested in a sub-task CMP as FMU.
```

Quality assurance of parameters

```Quality assurance is performed by yyy.
```

Quality verdict about simulation setup

```A formal quality verdict is not performed in this example, according to the low impact of the decision based on the result.
```

### 3.5 Execution

Quality information of simulation experiments (e.g error estimations or confidence range)

```
```

Quality assurance of parameters

```Quality assurance is performed by yyy.
```

Quality verdict about simulation setup

```A formal quality verdict is not performed in this example, according to the low impact of the decision based on the result.
```

### 3.6 Evaluation

Quality information of simulation results

```Quality assurance requirements were met: Potential risk and damage in case of misjudgement limited (additional development effort < 4 person weeks).
```

```Sufficient validation of the results and tools used by expert opinion and plausibility tests.
```

### 3.7 Decision

additional quality information

```
```

## 4\. Additional Information

here is a example how Credibility levels can look like and described

* Level A: no credibility measures and documentation at all
* Level B: basic credibility measures like expert opinion, basic tests
* Level C: Enhanced credibility measures are performed and documented, i.e solver errors
* Level D: Credibility measures that should be applied in total in a critical simulation

in the following as example for Software Quality Assurance (SQA) for the model

#### Status Level

* [ ] **a**: No SQA procedures are documented.
* [ ] **b**: SQA procedures from the vendor are referenced.
* [ ] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process.
* [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented.

#### Target Level

* [ ] **a**: No SQA procedures are documented.
* [ ] **b**: SQA procedures from the vendor are referenced.
* [ ] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process.
* [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented.
