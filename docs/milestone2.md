# Skrach - An FM Synthesizer
A final project milestone 1 report for CE446 by Daria Solovey

April 15, 2020

[TOC]

## Milestone II

By this milestone, a lab4 ip should have been modified and implemented to work with MIDI control such that clicking a key on the controller would pitch shift the lab4 module to an accurate frequency as defined by standard MIDI implementations.

The IP was modified having a removal of hardware control such that logic was simpler. Programming for this process was also completed and should theoretically work on the MicroBlaze side. However, the inclusion of the lab4 ip block into the block diagram seems to have broken UART communication, this also includes the module related to MIDI reading. This means, that I was not able to have it tested to make sure it was operational. Continued efforts in redesign and debugging are being made as this report is being written.

### Detailed Architecture

The architecture stays unchanged. After researching MIDI protocol more thoroughly, I found that it is simply built on top of UART, thus, implementing a UARTLite IP was suitable for this task.

#### Level-1 Description

![Level 1 Digram](img/level_1_diagram.png)

#### Datapath and Control

![Datapath and Control](img/datapath_conrol.png)

The major control pieces are the UART control for user input, and also the MIDI control coming from a MIDI device which is also a form of user input.

Both feed into the MicroBlaze which will then control the synth module (datapath), modifying frequency, amplitude, and sound shape for output.

### Integration Test Plan

The idea to test this was to simply put this on hardware and hook up and oscilloscope to the audio output and see the frequency, matching it to a few different keys on the MIDI controller and seeing how well it lines up. As the current implementation is non operational, no testing has been made as of yet and such, there are no results.