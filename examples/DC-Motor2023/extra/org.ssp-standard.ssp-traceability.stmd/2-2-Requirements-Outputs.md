**Phase 2, step 2 Define Requirements for Simulation Models**

In step 2 "Define Requirements for Simulation Models" of phase 2 the framework conditions, the relevant assumptions and the requirements that the simulation must fulfill are clarified. Also, the requirements of the simulation task are broken down into the individual requirements for the simulation models. In the case of usage of the models in several projects or with partners also IP-protection has to be considered. This is an iterative process between all steps of phase 2.

**Outputs:**
- **Requirements for simulation models**
  - A simple simulation model which contains the basic physical effects is used (see figure pdf in inputs Phase 1 Analyse). Two models: Model for electro-magnetic part, model for mechanical part.
  - Neglected effects:
    - commutation effects (losses are considered in R), eddy currents, friction (should be added to Mload).
  - Models should be available as FMUs.
  
  - **Specific quality requirements for the simulation models**
    - Specific test for model for mechanical part: Tests with -4, -2, 0, 2, 4 Nm, in combination with -2, -1, 0, 1, 2 Nm load simulation until +/- 2000 rad/s are achieved.
    - Assurance of the results and used resources by expert assessment and plausibility tests is sufficient.

- **Credibility documentation:**
  - **Procedure documentation with quality assurance**