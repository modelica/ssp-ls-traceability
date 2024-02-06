**Request input**

**Phase 3 step 1 Define Design Specification Simulation Integration**

**Inputs:**
- **Design specification for simulation integration (also design specification for the assembly and interaction of the elements of the simulation setup, execution and evaluation, including operation range**)
  - For larger applications the simulation environment and the models are developed and tested separately. Here it is described how the interaction a should work.
  - In this simple example the FMUs of the electrical and mechanical part are loaded as SSP into simulator xxx and are parameterized with the parameter set. 
  - The output of the stimuli block model is connected to the input U of the motor model. 
  - The FMU co-simulation environment YY version aa has to be used. 
  - The described simulation setup tests have to be performed and evaluated by experts.

- **Specific quality design specifications for the simulation integration (i.e. integration tests**)
  - Quality assurance: Specific test for simulation setup: 
    - Tests with -48 V, -24 V, 0 V, 24 V, 48 V, in combination with -2, -1, 0, 1, 2 Nm load. 
    - Start values of the state variables are 0. 
    - Plausibility check with expert opinion and comparison with static end values, these are determined by the model equations. 
    - Additional test with variation of the resistance value (0.05, 0.1, 0.2, 0,5, 1.0 and 1.5 Ohm).
