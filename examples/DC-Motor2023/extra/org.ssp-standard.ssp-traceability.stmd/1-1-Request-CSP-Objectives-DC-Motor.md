**Objectives**


- **Order Type** (optional)
(The order type determines the ordered engineering services (e.g. simulation service, modeling service, test service, risk assessment service). The entry should be supported by a classifier.)
  - Simulation service
  
- **Product /System under Test with version information** (mandatory)
(Specification of the sample type (e.g. A-sample, B-sample) or the SW status (e.g. CAT and version numbers) which is subject to the simulation (System under Test SuT).)
  - DC motor with the type part number XY12346
    
- **Engineering task** (mandatory)
(Description of the top-level engineering task (e.g. development of an AD driving function based on camera signals) and the specific engineering task (e.g. detection of critical occlusions when turning right with pedestrians).)
  - **Top-level engineering task**
    - A variant of a mild hybrid drive based on the DDC platform is to be developed. 
    - This application is a low cost variant.

  - **specific engineering task**
    - The sub-task here is to make a pre-selection for a suitable DC electric motor in the early phase of the project. 
    - It is to be examined whether the DC motor with the type part number XY12346 is suitable in principle. 
    - Rationale: The DC motor type part number XY12345 is already used in automotive projects and meets the specific requirements for the application (temperature, vibration resistance, ...).

- **Simulation Service Target** (mandatory)
(The simulation service target details the scope of the ordered simulation service with respect to the engineering task (e.g. assessment of the camera resolution by simulation).
  - Implementation and execution of a simulation based on a simple DC motor model. 
  - The effects which should be considered and neglected should be agreed on with experts.
 
- **Simulation Objectives (including KPI and other criteria)** (mandatory)
(Simulation objectives describe the quantities of interest and the target values (e.g. the distance between vehicle and pedestrian must be higher than 1.5m).)
  - The DC motor must be able to accelerate from 0 to 1000 rad/s within 1 s at 48 V applied voltage and a load torque of 1 Nm.

- **Explanation why simulation was chosen as solution approach for the engineering task** (optional)
  - Rationale: Same approach in similar engineering tasks was performed successfully.
  
- **Quality aspects according to the criticality of the decision of the engineering task** (mandatory)
  - Potential risk and damage in case of misjudgement limited (additional development effort < 4 person weeks). 
  - Sufficient validation of the results and tools used by expert opinion and plausibility tests.