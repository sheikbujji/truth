#### Method ####

> We do case studies to build a programming model where used examples are seizure detector and adaptive pacemaker.

#### Adaptive Pacemaker ####

  * Interface: input (user context - rest, walking, running - and user heartbeat rate) and output (controlled heartbeat rate)

  * Algorithm.

  * Safety. Three constraints: (i) heartbeat rate is always within a range (60-120 times per minute), (ii) heartbeat rate does not rapidly change (attack and decay slopes are always within a bound), (iii) heartbeat rate never stay above a certain threshold for a longer than a certain time interval.

  * Reliability.
> > when we were writing a program, did we specify the reliability/security requirements or invariants (e.g., in C program)? the answer is no. we need a programming model that is easy to specify these requirements. This easiness would be achieved when we don't ask programmer to write codes that can be automatically inferable by using the other codes he/she wrote. maybe this invariant can be monitored at runtime using a tiny hardware logic in each cell before their output data is stored in shared data storage.

  * Security.


  * Real-time.

  * Other (low-power & performance).

#### Seizure Detector ####

  * Interface: input (EEG signal(s) - analog data) and output (seizure alarm - binary signal)

  * Algorithm: There are multiple algorithms: threshold-based detection, neural network approach, and so on.

  * Safety. N/A (system should not harm the safety of patient).

  * Reliability.

  * Security. Free from software and hardware design bugs (automatic test case generation and testing)

  * Real-time. Online detection (quantitative spec TBD)



> #### Sensor Node ####
> We can classify the programming models widely used in sensor network area that became an active research area about 5 years ago. (i) Event-driven programming model. This model describes computation using an FSM-like form and nesC is an example. Because it does not need to maintain context of thread (e.g., stack), systems using this model are typically lightweight and cause a small runtime overhead. Also models represented in a similar way to FSM are relatively easy to verify. (ii) Thread-driven programming model. This model is familiar to many software developers and thus relatively easy to implement (e.g., reusing existing programs). This model relies on operating system for execution.

> The Truth programming model is designed for systems requiring verifiable reliability with a low execution time overhead, we are using an event-driven program model and improve this for programmability using novel abstractions and techniques.

> #### 센서노드 ####

> 약 5년 전부터 활발하게 연구되어온 센서 네트워크 분야의 프로그래밍 모델을 보면 크게 두가지 종류로 분류할 수 있다. 하나는 이벤트 기반 프로그래밍 모델로 FSM과 같은 형태로 작업을 기술하는 방식으로 nesC가 대표적이다. 다른 하나는 쓰레드 기반 프로그래밍 모델로 많은 소프트웨어 개발자들에게 친숙한 방식으로 이를 지원하는 운영체제를 필요로 한다. 이벤트 기반 프로그래밍은 스택 등의 쓰레드의 문맥을 유지할 필요가 없기 때문에 경량으로 상대적으로 실행시간의 비용이 적다. 또한 FSM에 기반 설계는 검증(Verification)이 용이한 장점도 있다. 반면, 쓰레드 기반 구조는 일정한 규모가 있는 소프트웨어의 개발시에 프로그래밍이 쉽고 기존의 소프트웨어를 적은 비용으로 재사용할 수 있다는 장점이 있다. Truth 프로그래밍 모델은 검증 가능한 안정성과 낮은 실행시간의 비용을 요구하는 응용을 목표로 설계되고 있기 때문에 전자인 이벤트 기반 프로그래밍 모델을 기반으로 하며, 이에 프로그래밍 용이도를 개선하기 위한 추상화 및 기법들을 추가한다.
