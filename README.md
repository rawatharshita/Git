# Git

# In this branching strategy, the term "development" is used instead of "master." 

- Development Branch (Dev):

The development branch serves as the primary integration branch for ongoing development work.
Developers create feature branches off development for implementing new features or bug fixes.
Feature branches are used to isolate individual changes and can be merged into development when they are complete and tested.
Continuous integration (CI) and automated testing are typically applied to the development branch to ensure code quality.

- Test Branch (Test):

A test branch is created periodically or when a set of features is ready for testing.
The test branch is used for testing new features and changes that have been merged into development.
QA (Quality Assurance) teams and automated test suites validate the code in the test branch.
Critical bug fixes identified during testing can be made directly in the test branch.

- Release Branches (UAT and Prod):

Release branches are created for user acceptance testing (UAT) and production deployments.
A uat branch is created from development when a set of features is ready for UAT testing by stakeholders and end users.
A prod branch represents the codebase that is currently in production or ready for production deployment.
Release branches are versioned (e.g., uat-1.0, prod-1.0) and are based on a stable state of the codebase from development.
Code changes from development are promoted to these release branches when they are deemed stable and ready for the respective environment.
Deployments to UAT and production environments are made from their respective release branches.
# Branching Responsibilties:
- Feature, Development and Test branch is created by developers and UAT & Prod release branches are created by DevOps

# directory structure
- my-maven-project/
├── .git/
├── .mvn/
│   └── wrapper/
│       ├── maven-wrapper.jar
│       └── maven-wrapper.properties
├── src/
├── target/
├── .gitignore
└── pom.xml


# POM.XML
- It is used to define build process, dependencies
