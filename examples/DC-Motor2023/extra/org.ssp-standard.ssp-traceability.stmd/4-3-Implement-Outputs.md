**Phase 4 step 3 Implement Test Cases**

In this process step, the test cases are implemented and quality assurance is performed. Preferably, the implementation should be done in a non-proprietary language (for reuse). Alternatively to the test cases the optimization or analysis functionality is implemented.

**Outputs:**
- **Test cases according to simulation task (the test case or optimization or analysis functionality targeting the simulation objective**)
  - The simulation starts with all state variables 0 (current, speed, position). 
  - Voltage 48 V and load torque 1 Nm is applied. 
  - Simulation should run for 1.5 sec. 
  - Evaluation if after 1 sec 1000 rad/s are reached.
  - **Test cases for "testing, validate" the DC-motor model**
    - The simulation starts with all state variables 0 (current, speed, position). 
    - Tests with -48 V, -24 V, 0 V, 24 V, 48 V, in combination with -2, -1, 0, 1, 2 Nm load. 

- **Quality assurance of test cases**
  - Quality assurance is performed by aaa.

- **Credibility documentation:**
  - **Procedure documentation with quality assurance**
