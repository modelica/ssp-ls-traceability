[Anchor Link](#my-chapter)


# COSTA

> Hi, I'm COSTA (**C**redibility **O**f **S**imulation **T**ool **A**ssistant)! I'm your companion in assessing the credibility of your simulation!

Here is the list of main chapters, which you can use to navigate
- [**Anchor Link**](#my-chapter)
- [**1. Introduction**] (#1. Introduction)
- [**2. Context**] (#2.Context)
- [**3. Verification**] (#3. Verification)
- [**4. Validation**] (#4.-validation)

**Versuch Nutzung und Ertellung einer custum-id in Kap2**

### My great Heading to custom id {#custom-id}

**My great Heading to custom id** {#custom-id}

## 1. Introduction


> ⚡ *The term credibility generally describes the quality to elicit trust in the results.* ⚡

I think you already know this, but to fully unleash the benefits of Modeling and Simulation (M\&S) and to enable simulation-informed decision making in product development, the credibility of the M\&S results has to be established and appropriately communicated between decision makers and simulation engineers.
Trust in M\&S can be built and increased by a comprehensible credibility assessment - and this is exactly where I can support you with!
I was developed to help you in assessing the credibility of your M\&S results.

**So, this is how we will do it:**

1.  The assessment contains three Chapters and I will ask you specific questions which I would like you to answer.

2.  For some questions you only need to enter the info in the text box
    ```
        Enter the info
    ```
3.  For some other questions (escpecially in Chapters Verification and Validation) I also need you to tick off the corresponding check box to determine the **status** level of credibility.
    *   [ ] **a**: No SQA procedures are documented
    *   [x] **b**: SQA procedures from the vendor are referenced
    *   [ ] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process
    *   [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented

4.  Last but not least, as same as for the status I need you to determine the **target** level of credibility, too.
    *   [ ] **a**: No SQA procedures are documented
    *   [ ] **b**: SQA procedures from the vendor are referenced
    *   [x] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process
    *   [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented

5.  That's it! Once we are done with all the questions, you will receive a credibility spider which you can use for documentation and communication of your M\&S results.

[**Back to main chapter list**] (#COSTA)

Enough chitchat for now! Let's get started! :-)

**Versuch Nutzung und Ertellung einer custum-id in Kap2**

[My great Heading to custom id] (#custom-id)


## 2. Context

> ⚡ *Rule #1: "There is no credibility without context!"* ⚡

Without any context information, there is very little I can do. So, let's collect them together!

### 2.1 Contact

You already know who I am and now I would like to know more about you. So, before we take-off, with whom do I have the pleasure to collaborate? Please tell me your name(s):
```
    Enter your name(s) (e.g. John Doe and Max Mustermann)
```
Nice to meet you!

### 2.2 Product & Project

First things first: Please tell me what product it is we're talking about
```
    Enter product name (e.g. e-machine, e-axle, iBooster)
```
and/or the project name this credibility assessment is required for
```
    Enter project name (e.g. VV-V)
```
### 2.3 Question of Interest

Now, please describe the question of interest, i.e., the specific question, decision, or concern that is being addressed:
```
    Enter question of Interest (e.g. What is the reliability of a design element of an e-machine at external excitations?)
```
### 2.4 Simulation Task

Good! And what does this all have to do with M\&S? Please let me know, what the simulation task or the simulation goal is for the specific question of interest.
```
    Enter simulation task (e.g. What are the local accelerations at a design element of an e-machine at external excitations using M&S?)
```
The more I know, the better I can support you! Please tell me the related simulation domain(s):
```
    Enter simulation domain(s) (e.g. solid mechanics, fluid dynamics)
```
### 2.5 Context of Use

Almost there! Now, I need you to specify the context of use (COU) for M\&S. The COU defines the specific role and scope of the computational model used to address the question of interest. It
should include a detailed statement of what will be modeled and how the outputs from the computational model will be
used to answer or inform the question of interest.
```
    Enter COU for M&S (e.g. Finite element analysis (FEA) will be used to determine the transfer function to convert external excitations into local accelerations at a design element. The obtained local accelerations are then used as inputs for reliability analysis.)
```
### 2.6 Quantities of Interest

Can you tell me the quantities of interest (QOI) which are the relevant outputs to inform a decision?
```
    Enter QOIs (e.g. accelerations)
```

[**Back to main chapter list**] (#COSTA)

## Now, buckle up! It's time for the questions! :-)

## 3. Verification

> ⚡ *"Did we implement the M\&S right?"* ⚡

The objective of verification is to ensure that the mathematical model is implemented correctly and then accurately solved. Verification is
composed of two activities: code verification and calculation verification, which we will discuss now in more detail. There we have following topics. Click on the list, you will jump to the specific chapter.
- [3.1 Code Verification](#3.1 Code Verification)
  - [3.1.1 Software Quality Assurance] (#3.1.1 Software Quality Assurance)
  - [3.1.2 Numerical Code Verification] (#3.1.2 Numerical Code Verification)
- [3.2 Calculation Verification] (#3.2 Calculation Verification)
  - [3.2.1 Discretization Error] (#3.2.1 Discretization Error)
  - [3.2.2 Numerical Solver Error] (#3.2.2 Numerical Solver Error)

### 3.1 Code Verification

> The objective is to identify and to remove errors in the source code and numerical algorithms of the computational software.

The goals of code verification are to identify and remove errors in the source code and
numerical algorithms of the computational software. Documented results from verification studies conducted by
the software developer may be referenced to support code verification. However, the verification studies from the
software developer may not encompass all aspects of the software used for the COU, and thus additional code verification
specific to the COU may be required. Code verification activities include software quality assurance and numerical code
verification.

#### 3.1.1 Software Quality Assurance

> Apply Software Quality Assurance (SQA) procedures and document the results to ensure that the software is functioning correctly and produces repeatable results on a specified computer resource in a specified software environment.

The objective of SQA is to ensure that the software is functioning correctly and produces repeatable results on a specified computer resource in a specified software environment. Types of computa-
tional model software include, but are not limited to, off-the-shelf (OTS), modified off-the-shelf (MOTS), and user-devel-
oped. SQA is achieved through software validation on OTS and MOTS software and software quality development
assurance on MOTS and user-developed software.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No SQA procedures are documented.
*   [ ] **b**: SQA procedures from the vendor are referenced.
*   [ ] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process.
*   [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented.

#### Target Level

*   [ ] **a**: No SQA procedures are documented.
*   [ ] **b**: SQA procedures from the vendor are referenced.
*   [ ] **c**: An audit is conducted with the vendor to confirm that quality procedures are conducted and documented during the software development process.
*   [ ] **d**: Benchmark verification test cases, provided by the vendor, are run on the user's computer platform. The results are compared to vendor results and documented.

[**Back to 3. Verification**] (#3. Verification)

#### 3.1.2 Numerical Code Verification

> Apply Numerical Code Verification (NCV) to demonstrate correct implementation and functioning of the numerical algorithms

The objective of NCV is to demonstrate correct implementation and functioning of the numerical algorithms. NCV relies on careful investigation of numerical aspects, such as spatial
and temporal convergence rates, spatial convergence in the presence of discontinuities, independence to coordinate
transformations, and symmetry tests related to various types of system conditions. NCV is typically conducted by
comparing numerical solutions to exact benchmark solutions that are analytical or semi-analytical in nature, as
might be generated using the method of manufactured solutions.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: NCV is not performed.
*   [ ] **b**: The numerical solution was compared to an accurate benchmark solution from another verified code.
*   [ ] **c**: Discretization error was quantified by comparison to an exact solution as the discretization was refined, i.e. the numerical solution asymptotically approaches the exact solution as the discretization is refined.
*   [ ] **d**: In addition to the quantification of discretization error and the execution of a grid convergence study as described in level c, the observed order of accuracy was quantified and compared to the theoretical order of accuracy.

#### Target Level

*   [ ] **a**: NCV is not performed.
*   [ ] **b**: The numerical solution was compared to an accurate benchmark solution from another verified code.
*   [ ] **c**: Discretization error was quantified by comparison to an exact solution as the discretization was refined, i.e. the numerical solution asymptotically approaches the exact solution as the discretization is refined.
*   [ ] **d**: In addition to the quantification of discretization error and the execution of a grid convergence study as described in level c, the observed order of accuracy was quantified and compared to the theoretical order of accuracy.

[**Back to 3. Verification**] (#3. Verification)

### 3.2 Calculation Verification

> The objective is to estimate the numerical error in the quantities of interest (QOIs) due to spatial and temporal discretization of the model.

Calculation verification helps to ensure that the spatial and temporal convergence behavior of the solution of the computational model is analyzed
and quantified by refining the discretization parameters and solver convergence tolerances. Additionally, it helps to
ensure that practitioner errors are not corrupting the simulation results. Calculation verification involves the estimation
of discretization error, numerical solver error, and identification of use error.

#### 3.2.1 Discretization Error

> Determine the Discretization Error. This error is associated with solving continuous computational problems at a finite number of spatial and/or temporal grid points.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No grid or time-step convergence analysis was performed to estimate the discretization error.
*   [ ] **b**: Applicable grid or time-step convergence analyses are performed and documented and their respective convergence behaviors are observed to be stable, but the discretization error is not estimated.
*   [ ] **c**: Applicable grid or time-step convergence analyses are performed and documented and discretization error is estimated.

#### Target Level

*   [ ] **a**: No grid or time-step convergence analysis was performed to estimate the discretization error.
*   [ ] **b**: Applicable grid or time-step convergence analyses are performed and documented and their respective convergence behaviors are observed to be stable, but the discretization error is not estimated.
*   [ ] **c**: Applicable grid or time-step convergence analyses are performed and documented and discretization error is estimated.

[**Back to 3. Verification**] (#3. Verification)

#### 3.2.2 Numerical Solver Error

> Determine the Numerical Solver Error. Numerical solver error refers to the errors originating from the numerical solution
> based on the selection of solver parameters (e.g., convergence tolerance(s)).

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No solver parameter sensitivity is performed.
*   [ ] **b**: No solver parameter sensitivity is performed. Solver parameters are established based on values from a previously verified computational model. This is documented in a sufficiently traceable manner.
*   [ ] **c**: Problem-specific sensitivity study is performed and documented on solver parameters, confirming that changes in simulation results due to changes in the solver parameters are negligible relative to the modeling & simulation accuracy goal.

#### Target Level

*   [ ] **a**: No solver parameter sensitivity is performed.
*   [ ] **b**: No solver parameter sensitivity is performed. Solver parameters are established based on values from a previously verified computational model. This is documented in a sufficiently traceable manner.
*   [ ] **c**: Problem-specific sensitivity study is performed and documented on solver parameters, confirming that changes in simulation results due to changes in the solver parameters are negligible relative to the modeling & simulation accuracy goal.

[**Back to 3. Verification**] (#3. Verification)

#### 3.2.3 User Error Analysis

> Identify, mitigate and document User Errors which can occur in the simulation results by the practitioner (e.g. typographical errors).

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: User errors are not analyzed.
*   [ ] **b**: Key user errors are identified, and the practitioner knows about basic mitigation concepts .
*   [ ] **c**: Key user errors are identified, appropriate mechanisms for detection and mitigation are implemented and reviewed.

#### Target Level

*   [ ] **a**: User errors are not analyzed.
*   [ ] **b**: Key user errors are identified, and the practitioner knows about basic mitigation concepts .
*   [ ] **c**: Key user errors are identified, appropriate mechanisms for detection and mitigation are implemented and reviewed.

[**Back to 3. Verification**] (#3. Verification)

[**Back to main chapter list**] (#COSTA)

## 4. Validation

> ⚡ *"Did we implement the right M\&S?"* ⚡

Validation is the process of assessing the degree to which the computational model is an appropriate representation of
the reality of interest. Therefore, validation activities are principally concerned with demonstrating the correctness of the
underlying model assumptions and the degree to which sensitivities and uncertainties of the computational model and
the associated comparator(s) are understood.\
Validation is generally demonstrated by comparing the computational model predictions with the results from the
comparator(s) (e.g., physical experiments and/or other already validated simulation results).
Therefore, appropriate validation activities require attention to both the computational model and the comparator, with
an appropriately rigorous evaluation of the simulation results.

No worries! I will not let you down - we'll do it together!

### 4.1 Computational Model

> The two credibility factors for the computational model are model form and model
> inputs, which encompass four components of a computational model: governing equations, system configuration,
> system properties, and system conditions.

#### 4.1.1 Model Form

> Analyze the Model form which refers to both the conceptual and mathematical formulation of the computational
> model.

Model form includes not only the form of the governing equations but also the form of the system configuration,
system properties, and system conditions. Model form is established or selected based on assumptions that will enable the
computational model to achieve the desired predictions within the context of use (COU). The assumptions that give rise to a model form
may be evaluated by preliminary modeling studies to identify the important contributors to model form uncertainty. Any prior knowledge on the success or limitations of the selected model form for the
problem types/physics relevant to the COU may be referenced.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: Influence of model form assumptions are not explored.
*   [ ] **b**: Influence of expected key model form assumptions are explored and documented, to indicate that major effects of the regarded system for the COU with the QOIs are represented by the model equations or the model approaches.
*   [ ] **c**: Comprehensive evaluation and documentation of the model form assumptions and their implementation, that determine the governing equations and model approaches, to prove that the model represents in a well-defined manner and with sufficient accuracy the regarded system for the COU with the QOIs.

#### Target Level

*   [ ] **a**: Influence of model form assumptions are not explored.
*   [ ] **b**: Influence of expected key model form assumptions are explored and documented, to indicate that major effects of the regarded system for the COU with the QOIs are represented by the model equations or the model approaches.
*   [ ] **c**: Comprehensive evaluation and documentation of the model form assumptions and their implementation, that determine the governing equations and model approaches, to prove that the model represents in a well-defined manner and with sufficient accuracy the regarded system for the COU with the QOIs.

#### 4.1.2 Model Inputs & Parameters Sensitivities

> Examine and document the degree to which the computational model outputs are sensitive to the model inputs & parameters.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: Sensitivity analysis is not performed.
*   [ ] **b**: Sensitivity analysis on expected key parameters is performed and documented.
*   [ ] **c**: Comprehensive sensitivity analysis is performed and documented.

#### Target Level

*   [ ] **a**: Sensitivity analysis is not performed.
*   [ ] **b**: Sensitivity analysis on expected key parameters is performed and documented.
*   [ ] **c**: Comprehensive sensitivity analysis is performed and documented.

#### 4.1.2 Model Inputs & Parameters Uncertainties

> Examine and document the degree to which known or assumed uncertainties in the model inputs are propagated to uncertainties in the simulation results.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: Uncertainties are not identified.
*   [ ] **b**: Uncertainties on expected key inputs are identified and qualitatively assessed w\.r.t. the simulation results.
*   [ ] **c**: Uncertainties on a subset of expected key inputs are identified and quantified and are propagated to quantitatively assess the effect on the simulation results. The not quantified key inputs are qualitatively assessed.
*   [ ] **d**: Uncertainties on all key inputs are identified and quantified, and are propagated to quantitatively assess the effect on the simulation results.

#### Target Level

*   [ ] **a**: Uncertainties are not identified.
*   [ ] **b**: Uncertainties on expected key inputs are identified and qualitatively assessed w\.r.t. the simulation results.
*   [ ] **c**: Uncertainties on a subset of expected key inputs are identified and quantified and are propagated to quantitatively assess the effect on the simulation results. The not quantified key inputs are qualitatively assessed.
*   [ ] **d**: Uncertainties on all key inputs are identified and quantified, and are propagated to quantitatively assess the effect on the simulation results.

### 4.2 Comparator

> Comparators provide the data against which simulation results are evaluated. Comparators can be pyhsical tests and/or other simulation results. The comparator might be designed or selected to
> optimize a balance of resources and relevance to the COU.

The credibility ascpect comparator addresses the test samples and the test conditions. Both test samples and test conditions are further subdivided into the following four components: quantity, range of characteristics, measurements, and measurement uncertainty. The measurements made to characterize the comparator test
samples and test conditions may be used as inputs to the computational model. The measurement data also enable
quantification of the uncertainty in the computational model inputs, thereby enabling quantification of the uncertainty in
the computational model outputs. The measurement data may also be used to examine the equivalency of the inputs used
in the computational model and comparator during the validation assessment. Each component of test samples and test
conditions impacts the extent to which the comparator may support model credibility and should be considered
separately.

#### 4.2.1 Suitability of Test Samples

> Determine and evaluate the quantity, the range of characteristics of the test samples the rigor with which
> the measurement data characterize each test sample. Here, the number of samples used as well as the range of each test sample charcateristic of interest included in the comparator study
> is examined. Increased credibility is generally achieved with a larger number of samples and with a broader range of test sample characteristics.

*Example: If the length of the test sample is a characteristic of interest, this factor addresses the range of the lengths studied.*

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No test sample is used.
*   [ ] **b**: A single sample is used, with a single set of characteristics.
*   [ ] **c**: Multiple samples are used representing a range of characteristics near nominal. Some of the key characteristics of these test samples are measured. The number of samples is not enough to be statistically relevant.
*   [ ] **d**: A statistically relevant number of samples is used that represent the nominal and the expected extreme values of the parameters. All key characteristics of the samples are measured.

#### Target Level

*   [ ] **a**: No test sample is used.
*   [ ] **b**: A single sample is used, with a single set of characteristics.
*   [ ] **c**: Multiple samples are used representing a range of characteristics near nominal. Some of the key characteristics of these test samples are measured. The number of samples is not enough to be statistically relevant.
*   [ ] **d**: A statistically relevant number of samples is used that represent the nominal and the expected extreme values of the parameters. All key characteristics of the samples are measured.

#### 4.2.2 Uncertainty of Test Sample Measurements

> Examine the uncertainty associated with the tools and methods used to obtain the measurements characterizing the samples.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: Samples are not characterized or are characterized with gross observations, and measurement uncertainty is not addressed.
*   [ ] **b**: Uncertainty analysis incorporates instrument accuracy only.
*   [ ] **c**: Uncertainty analysis incorporates instrument accuracy and repeatability (i.e., statistical treatment of repeated measurements).
*   [ ] **d**: Uncertainty analysis incorporates a comprehensive uncertainty quantification, which includes instrument accuracy, repeatability, and other conditions affecting the measurements.

#### Target Level

*   [ ] **a**: Samples are not characterized or are characterized with gross observations, and measurement uncertainty is not addressed.
*   [ ] **b**: Uncertainty analysis incorporates instrument accuracy only.
*   [ ] **c**: Uncertainty analysis incorporates instrument accuracy and repeatability (i.e., statistical treatment of repeated measurements).
*   [ ] **d**: Uncertainty analysis incorporates a comprehensive uncertainty quantification, which includes instrument accuracy, repeatability, and other conditions affecting the measurements.

#### 4.2.3 Suitability of Test Conditions

> For a given test method, determine and evaluate the number and the range of test conditions conditions included in the comparator study as well as the rigor with which the measurement data characterize the test conditions.
> Increased credibility is generally achieved with a larger number and a broader range of test conditions.

*Example: The test method could specify measuring the test sample strength at multiple strain rates under external loads at multiple temperatures.
If the test condition is temperature, this factor addresses the range of temperatures studied.*

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No test condition is used.
*   [ ] **b**: A single condition is used, with a single set of characteristics.
*   [ ] **c**: Multiple conditions are used representing a range of characteristics near nominal. Some of the key characteristics of these test conditions are measured. The number of conditions is not enough to be statistically relevant.
*   [ ] **d**: A statistically relevant number of conditions is used that represent the nominal and the expected extreme values of the parameters. All key characteristics of the conditions are measured.

#### Target Level

*   [ ] **a**: No test condition is used.
*   [ ] **b**: A single condition is used, with a single set of characteristics.
*   [ ] **c**: Multiple conditions are used representing a range of characteristics near nominal. Some of the key characteristics of these test conditions are measured. The number of conditions is not enough to be statistically relevant.
*   [ ] **d**: A statistically relevant number of conditions is used that represent the nominal and the expected extreme values of the parameters. All key characteristics of the conditions are measured.


#### 4.2.4 Uncertainty of Test Condition Measurements

> Examine the uncertainty associated with the tools and methods used to obtain the measurements characterizing the test conditions.


#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: Test conditions are not characterized or are characterized with gross observations, and measurement uncertainty is not addressed.
*   [ ] **b**: Uncertainty analysis incorporates instrument accuracy only.
*   [ ] **c**: Uncertainty analysis incorporates instrument accuracy and repeatability (i.e., statistical treatment of repeated measurements).
*   [ ] **d**: Uncertainty analysis incorporates a comprehensive uncertainty quantification, which includes instrument accuracy, repeatability, and other conditions affecting the measurements.

#### Target Level

*   [ ] **a**: Test conditions are not characterized or are characterized with gross observations, and measurement uncertainty is not addressed.
*   [ ] **b**: Uncertainty analysis incorporates instrument accuracy only.
*   [ ] **c**: Uncertainty analysis incorporates instrument accuracy and repeatability (i.e., statistical treatment of repeated measurements).
*   [ ] **d**: Uncertainty analysis incorporates a comprehensive uncertainty quantification, which includes instrument accuracy, repeatability, and other conditions affecting the measurements.

### 4.3 Applicability
> Applicability is the relevance of the validation activities to support the use of the computational model for a context of use (COU). The
applicability of the validation activities is governed by two factors: the relevance of the quantities of interest (QOIs) used in the validation
activities to the QOIs of the COU, and the relevance of the validation conditions relative to those of the COU.

Note, that the measured QOIs of the validation activities are not always identical to the QOIs for the COU because the QOIs for the
COU are not always directly measurable, might not be measured without unduly perturbing the intended test conditions,
and/or might not be obtained within acceptable ranges of uncertainty and error. Therefore, the measured QOIs of the
validation activities may be surrogates for the QOIs for the COU, with varying degrees of applicability.

The aspects associated with establishing applicability of the computational model to the COU are the rele-
vance of the validation activities to the COU and the relevance of the validation QOIs.

#### 4.3.1 Relevance of the QOIs
> Evaluate the QOIs (Quantity of Interests) for validation relevance, completeness, comparability (simulation results and comperator) and document that appropriately.
> Compare the QOIs from the validation activities to the QOIs for the COU.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: From validation activities, no QOIs are related to those for the COU.
*   [ ] **b**: The QOIs from the validation activities are related, though not identical, to those for the COU.
*   [ ] **c**: A subset of the QOIs from the validation activities are sufficiently relevant, complete, comparable to those for the COU.
*   [ ] **d**: All QOIs from the validation activities are sufficiently relevant, complete, comparable to those for the COU.

#### Target Level

*   [ ] **a**: From validation activities, no QOIs are related to those for the COU.
*   [ ] **b**: The QOIs from the validation activities are related, though not identical, to those for the COU.
*   [ ] **c**: A subset of the QOIs from the validation activities are sufficiently relevant, complete, comparable to those for the COU.
*   [ ] **d**: All QOIs from the validation activities are sufficiently relevant, complete, comparable to those for the COU.


#### 4.3.2 Relevance of the Validation Activities to the COU
> Evaluate relative proximity of the context of use (COU) to the validation ranges and document that appropriately.

#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: There is no overlap between the validation ranges and the COU.
*   [ ] **b**: There is partial overlap between the validation ranges and the COU.
*   [ ] **c**: The COU encompass all validation ranges, and the validation ranges span the entire COU space.

#### Target Level

*   [ ] **a**: There is no overlap between the validation ranges and the COU.
*   [ ] **b**: There is partial overlap between the validation ranges and the COU.
*   [ ] **c**: The COU encompass all validation ranges, and the validation ranges span the entire COU space.

### 4.4 Assessment
> An assessment of the accuracy of the simulation output can be performed after the outputs from the
V&V activities are obtained and compared.

We are almost done! There is just one final step missing: The output comparison between simulation and comparator.

> Compare outputs of simulation and comparator.
Determine how well the simulation results and the comparator match and document that appropriately.


#### Documentation
```
    Describe your executed activities
```
#### Status Level

*   [ ] **a**: No assessment.
*   [ ] **b**: Visual or qualitative comparison concludes sufficient agreement. What sufficient means is to be defined contextually by experts.
*   [ ] **c**: Differences between computational results and comparator data (e.g. experimental) are typically less than 5%. Includes consideration of relevant uncertainty, but statistical distributions for uncertainty quantification are unknown.
*   [ ] **d**: Differences between computational results and comparator data (e.g. experimental) are typically less than 5%. Statistical distributions for uncertainty quantifications are known. 

#### Target Level

*   [ ] **a**: No assessment.
*   [ ] **b**: Visual or qualitative comparison concludes sufficient agreement. What sufficient means is to be defined contextually by experts.
*   [ ] **c**: Differences between computational results and comparator data (e.g. experimental) are typically less than 5%. Includes consideration of relevant uncertainty, but statistical distributions for uncertainty quantification are unknown.
*   [ ] **d**: Differences between computational results and comparator data (e.g. experimental) are typically less than 5%. Statistical distributions for uncertainty quantifications are known. 

[**Back to main chapter list**] (#COSTA)

# CONGRATS!

# My Chapter
You have just crossed the finish line! Now, I will create the credibility spider for you...
