**Phase 4 step 5 Integrate Simulation Environment, Models, Parameters**

In this process step the models with their parametrization and tests (or the optimization or analysis functionality) are integrated in the simulation environment. Integration tests are implemented and performed according to the specific quality design specifications. Phase 4 is an iterative process between steps 1 to 6, specially step 5 and 6. The results of this iterative process are documented in the according steps.

**Process execution:**
- Integrate simulation environment, models and parameters to simulation setup
- Parametrization of simulation setup (solver settings, …)
- Implement and execute integration tests
  - Tests with -48 V, -24 V, 0 V, 24 V, 48 V, in combination with -2, -1, 0, 1, 2 Nm load. 
  - The start values of the state variables are 0. 
  - Comparison with static end values, these are determined by the model equations. 
  - Additional test with variation of the resistance value (0.05, 0.1, 0.2 and 0.5 Ohm).
  - Test with variations of the solver settings.
