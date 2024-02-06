**Phase 3 step 2 Define Design Specification Simulation Models**

In this process step, the design specification for the simulation model is determined from the requirements. Important here is the documentation why the respective type of realization was chosen. Conceptual implementations can be used for design specification decisions. They are handled in separate sub-tasks.

There are two kinds of inputs for this step. Firstly, the information about the simulation setup in which the model should finally run. This information is needed to clarify and give background information for the design specification. Secondly, the information about the requirements for the specific simulation setup in which the model has to be developed and the specific model assurance has to be performed.
As an output also the specific subset of the design specification of the other steps of phase 3 has to be provided (simulation integration, parameters, test cases, simulation environment). This information is needed for clarification for the implementation of the model. This is an iterative process between all steps in phase 3. The results are documented in the specific steps.

**Outputs:**
- **Design specification for models**
  - The sub-model of the electromechanical part is realized as DGL 1st order, the mechanical part as DGL 2nd order (see pdf at outputs).
  - The sub-models are realized as FMUs. The DC motor model is provided as SSP. 
  - The inputs, outputs and parameters are specified in pdf and SSP-file.
  - For the model for the electrical part of the DC motor the FMU Model12345 from the library987 has to be used. 
  - The model for the mechanical part has to be developed. 
  - For the stimuli block FMU Model444 from the library987 has to be used.
  - **Design specification for model specific simulation set up**
    - The sub-model for the mechanical part has to be developed as a Modelica model in the Dymola environment Version XX and exported and tested as FMU 2.0 model.

  - **Specific quality design specifications for the models**
    - Quality assurance: Specific tests for model in environment specified in simulation setup: 
    - Tests with -48 V, -24 V, 0 V, 24 V, 48 V, in combination with -2, -1, 0, 1, 2 Nm load. 
    - Plausibility check with expert opinion and comparison with static end values.
    - The following checks should be carried out on the sub-model for the mechanical part:
      - If 0.5 Nm is applied to M, the speed has a PT1 curve.
      - Is the stationary final speed with friction 0, M/d at d = 0.001 and 0.002 Nms/rad.
      - The checks should be carried out in the Modelica environment and the environment specified in the simulation setup.

- **Credibility documentation:**
  - **Procedure documentation with quality assurance**
  - The data sheet for the XY12346 DC motor contains the necessary data, but must still be converted (e.g. the data sheet lists with several different types of friction).