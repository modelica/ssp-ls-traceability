**Phase 4 step 1 Implement Simulation Model(s)**

In this process step, the simulation sub-models are implemented and integrated to the simulation model. Quality assurance is performed, both individually for the sub-models and in their interaction as simulation model. There are two kinds of inputs for this step. Firstly, the information about the simulation setup in which the model should finally run. This information is needed to clarify and give background information for the implementation. Secondly, the information about the design specification and requirements for the specific simulation setups in which the model and sub-models has to be developed and the specific model assurances has to be performed. The quality assurance within the "target" simulation environment is carried out in step 6 of phase 4.

**Process execution:**
- **Implement simulation sub-models**
  - The electrical part of the DC motor and stimuli block comes with documentation as FMUs from library.
  -The mechanical part of the DC motor is implemented and tested in a sub-task CMP as FMU.
- **Integrate sub-models to model**
  - Sub-models (FMUs) are connected (see pdf) and provided as SSP. 
  - The specified tests are performed and evaluated by experts and the results are documented. 
  - Recommendations for solver settings (possibly parameter dependent) are documented.
- Quality assurance of the sub-models
- Quality assurance of the model