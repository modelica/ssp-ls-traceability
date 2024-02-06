**Phase 3 step 5 Define Design Specification Simulation Environment**

In this process step, the design specification for the simulation environment is determined from the requirements. This includes design specifications for structure, interfaces, modules, workflow and data flow.

Important here is the documentation why the respective type of realization was chosen. Conceptual implementations can be used for design specification decisions. They are handled in separate sub-tasks.

There are two kinds of inputs for this step. Firstly, the information about the simulation setup in which the (software) modules, workflow and data flow should finally run. This information is needed to clarify and give background information for the design specification. Secondly, the information about the requirements for the specific simulation setup in which the module has to be developed and the specific model assurance has to be performed.
As an output also the specific subset of the design specification of the other steps of phase 3 has to be provided (simulation integration, models, parameters, test cases). This information is needed for clarification for the implementation of the simulation environment. This is an iterative process between all steps in phase 3. The results are documented in the specific steps.

**Process execution:**
- Definition of design specification for simulation environment (structure, interfaces, design specification of modules)
- Definition of design specification of workflow and data flow
- Definition of design specification of quality assurance for overall simulation environment and elements
  - For larger applications, quality assurance that does not include the target model should also be performed. The environment should already have been used in similar applications, and expert opinion should be obtained.
- Create necessary subset of information for simulation environment implementation from the outputs of the other steps of phase 3