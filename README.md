# Dockerize ESO p2pp tool for easier and lighter weight installation

ESO describes p2pp as "Phase 2 Proposal Preparation (P2PP) tool has been in use at ESO (European Space Observatory) telescopes since 1997." "The Phase 2 Proposal Preparation (P2PP) Tool is used to create and manage Observation Blocks (OBs). These OBs are used to describe observing sequences for all ESO instruments, both in Visitor Mode and in Service Mode."

This is likely of interest to you if you are an Astronomy researcher or student wanting to easily use the p2pp tool quickly and easily and without changing a lot of things on your computer.

# Reasoning

Whilst installing this we noticed that it doesn't work correctly with Java 9+. It is recommended to downgrade. Often on a mac this is complicated if you have already upgraded Java, which keeps nagging you, because of of several things. 1) you might not want to change your Java for other dependent programs and 2) Java 8 is no longer available from Oracle, making it more complex to run and 3) running multiple java versions often requires additional tooling such as jenv or complex manual configuration.

# Installation

git clone the current project.

```bash
./download.sh
./local-setup.sh
./rundocker
```

# Prerequisites

You will need to install x11 for your operating system. On a Mac you will need to install xQuartz.

# About Docker

Docker is a light weight virtualization tool common in web development. Rather than emulating an entire computer, os a tool like Virtual Box might do, complete with a heavy CPU, HDD and Memory footprint it just virtualizes the kernel. In simpler words, rather than running an entire fake computer, Docker emulates just enough fake stuff as needed to run. The end result is a fast downloading, easily reproducible (works on any machine), light weight (low memory, cpu, hard drive, and super easy to install variation.

# Common issues

Error: "Exception in thread "main" java.awt.AWTError: Can't connect to X11 window server using '192.168.1.100:0' as the value of the DISPLAY variable."

Did you close x11? Run `./local-setup.sh` again to make sure it is running.