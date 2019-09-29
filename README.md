# Dockerize ESO p2pp tool for easier and lighter weight installation

**IMPORTANT NOTE This is a WIP and it is not completely working yet. Currently I am getting the error below that the connection to the host x11 fails. A collogue suggested trying to use [docker-ssh-tunnel](https://github.com/cagataygurturk/docker-ssh-tunnel)**

```
Exception in thread "main" java.awt.AWTError: Can't connect to X11 window server using ':0' as the value of the DISPLAY variable.
	at sun.awt.X11GraphicsEnvironment.initDisplay(Native Method)
	at sun.awt.X11GraphicsEnvironment.access$200(X11GraphicsEnvironment.java:65)
	at sun.awt.X11GraphicsEnvironment$1.run(X11GraphicsEnvironment.java:115)
	at java.security.AccessController.doPrivileged(Native Method)
	at sun.awt.X11GraphicsEnvironment.<clinit>(X11GraphicsEnvironment.java:74)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:264)
	at java.awt.GraphicsEnvironment.createGE(GraphicsEnvironment.java:103)
	at java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment(GraphicsEnvironment.java:82)
	at sun.awt.X11.XToolkit.<clinit>(XToolkit.java:132)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:264)
	at java.awt.Toolkit$2.run(Toolkit.java:860)
	at java.awt.Toolkit$2.run(Toolkit.java:855)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.awt.Toolkit.getDefaultToolkit(Toolkit.java:854)
	at org.eso.ohs.phase2.apps.p2pp.P2PP.<init>(P2PP.java:137)
	at org.eso.ohs.phase2.apps.p2pp.P2PP.main(P2PP.java:652)
```

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

# About Docker

TODO