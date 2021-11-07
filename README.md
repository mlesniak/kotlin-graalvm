# Overview

## Build and test

Run `./showcase.sh`; docker and gradle must be installed.


## Demo

Playground for GraalVM compilations experiments

    docker run --rm -it -v $(pwd):/data alpine
    
    / # time -v data/app-linux
    Hello World!
    Command being timed: "data/app-linux"
    User time (seconds): 0.00
    System time (seconds): 0.00
    Percent of CPU this job got: 22%
    Elapsed (wall clock) time (h:mm:ss or m:ss): 0m 0.00s   <-------- nice
    Average shared text size (kbytes): 0
    Average unshared data size (kbytes): 0
    Average stack size (kbytes): 0
    Average total size (kbytes): 0
    Maximum resident set size (kbytes): 24384               <-------- nice
    Average resident set size (kbytes): 0
    Major (requiring I/O) page faults: 0
    Minor (reclaiming a frame) page faults: 195
    Voluntary context switches: 3
    Involuntary context switches: 0
    Swaps: 0
    File system inputs: 0
    File system outputs: 0
    Socket messages sent: 0
    Socket messages received: 0
    Signals delivered: 0
    Page size (bytes): 4096
    Exit status: 0