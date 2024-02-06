**Request input**

**Phase 3 step 2 Define Design Specification Simulation Models**

**Inputs:**
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

