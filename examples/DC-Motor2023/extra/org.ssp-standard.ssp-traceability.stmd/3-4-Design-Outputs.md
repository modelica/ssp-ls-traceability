**Phase 3 step 4 Define Design Specification Test Cases**

In this process step, the design specifications for the test cases are determined from the requirements. In some cases, predefined test cases are already committed. Here it is important that the corresponding requirements for the models and simulation infrastructure are consistent.
As an output also the specific subset of the design specification of the other steps of phase 3 has to be provided (simulation integration, models, parameters, simulation environment). This information is needed for clarification for the implementation of the test cases. This is an iterative process between all steps in phase 3. The results are documented in the specific steps.

**Outputs:**
- **Design specification for test cases (the test case or optimization or analysis criteria targeting the simulation objective**)
  - In this simple example there is no difference between Requirement and Design Specification. For more extensive tests the structure of the tests (reuse, modularization) should be defined here.
  - **Target Simulation:**
    - The simulation starts with all state variables 0 (current, speed, position). 
    - Voltage 48 V and load torque 1 Nm is applied. Simulation should run for 1.5 sec. 
    - Evaluation if after 1 sec 1000 rad/s are reached.

- **Specific quality design specifications for the test cases**
  - Test cases and evaluation approach have to be proved by experts.

- **Credibility documentation:**
  - **Procedure documentation with quality assurance**
     - Open point, has to be fulfilled.
