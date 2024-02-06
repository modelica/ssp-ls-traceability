**Request input**

**Phase 2, step 2 Define Requirements for Simulation Models**


**Input:**
- **Requirements for simulation models**
  - A simple simulation model which contains the basic physical effects is used (see figure pdf in inputs Phase 1 Analyse). Two models: Model for electro-magnetic part, model for mechanical part.
  - Neglected effects:
    - commutation effects (losses are considered in R), eddy currents, friction (should be added to Mload).
  - Models should be available as FMUs.
  
  - **Specific quality requirements for the simulation models**
    - Specific test for model for mechanical part: Tests with -4, -2, 0, 2, 4 Nm, in combination with -2, -1, 0, 1, 2 Nm load simulation until +/- 2000 rad/s are achieved.
    - Assurance of the results and used resources by expert assessment and plausibility tests is sufficient.
