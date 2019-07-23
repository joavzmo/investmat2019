# Modeling and control of a vehicle suspension in Matlab/Simulink

[Joan Vazquez Molina](http://www.linkedin.com/in/joanvazquez)

October 2019

Invited lecture, part of the course [Mathematical Modeling in the Industry](https://www.upv.es/pls/oalu/sic_asi.Busca_Asi?p_codi=33202&p_caca=2017&P_IDIOMA=c&p_vista=MSE&p_tit=2199) of the [MSc in Mathematical Research](http://www.investmat.org/) at [Universitat Politècnica de València](http://www.upv.es/).


## 1 - Introduction: mathematical engineering in the industry
  * Personal background.
  * What is mathematical engineering?
  * What do I do at [DRiV](https://www.driv.com/)?
  * Transitioning from the Academia to the Industry.
     * Yearly objectives, performance reviews, development plans.
     * Working with others (other colleagues, other departments, other companies).
    
## 2 - Workshop: modeling and control of a vehicle suspension

**Main reference**: Bill Messner & Dawn Tilbury, [Control Tutorials for Matlab and Simulink](http://ctms.engin.umich.edu/CTMS/index.php?example=Suspension&section=SystemModeling).

Learning objectives based on [Bloom’s Taxonomy of Measurable Verbs](aux/BloomTaxonomy.pdf).
  
### 2.1 - System modeling
  * Learner will be able to recognize lumped element models in engineering.
  * Learner will be able to describe the quarter car model.
  * Learner will be able to calculate the relevant Laplace transforms and transfer functions analytically.
  * Learner will be able to create transfer functions in Matlab using `tf`.

### 2.2 - System analysis
  * Learner will be able to analyze the open-loop step response in Matlab using `step`.
  * Learner will be able to analyze the frequency response in Matlab using `bode`.

### 2.3 - PID controller design
  * Learner will be able to create a PID controller in Matlab using `pid`.
  * Learner will be able to analyze the closed-loop step response in Matlab using `feedback`.
  * Learner will be able to select the best parameters for a PID controller.

### 2.4 - Simulink modeling
  * Learner will be able to describe the main workflow to execute a Simulink simulation from a system of differential equations.
  * Learner will be able to create a Simulink model of a quarter car.
  * * Learner will be able to analyze the open loop response of a quarter car in Simulink.

### 2.5 - Simulink controller design

## 3 - Extension: the real deal at work
  * *DRiV intelligent suspension* portfolio and the meaning of model-based development and system identification.
  * Vehicle models and the importance of the research question.
  * Road input, maneuvers and the role of standards.
  * Controller development and the interplay between science and technology.

## 4 - Conclusion: the discovery of the inerter
  * What is an inerter and how come no one had done this before?
  * You have a useful set of skills to succeed, but people do not know, despite the hype around math.
  * Final advice
    * Do useful stuff (Driving for results, Planning and Organizing, Communication).
    * Be nice (Building Trusting Relationships, Coaching).
    * Keep learning (Technical/Professional knowledge and skills).
