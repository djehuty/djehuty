# Djehuty

This is a platform for a collaborative, open, minimal, flexible, federated,
public operating system. It stresses the idea that every person can contribute
freely and gain without barrier. Any person can make any small part of
the system better, and that progress will spread, regardless of how
small the contribution or how connected is the individual.

It is nowhere near done. Help!

## System Model

There is a strong focus on code sharing. The system is open and heavily
modifiable. Computation is divided into a few components:

### Interface

The *interface* is a short description of a functional behavior. Basically,
what is the input, what is produced, and what is the action being performed
called.

For instance, let's create a piece of data representing a Circle. Our
interface would list a description of what a Circle is followed by a list
of behaviors a Circle has. The following is written in a simplified dialect of
the Rust language.

```
struct Circle {
  radius: f64,
  center: (f64, f64)
}

impl Circle {
  // Returns whether or not the given circle intersects.
  fn intersectsCircle(b: Circle) -> bool;
  // ...

}
```

This Circle has radius and center fields and a function that determines if
another Circle has intersected it. What you will notice is that although a
module has a behavior, it is not described here. We still need a way to
describe that the function does. This will be the specification, discussed
next.

Any individual can create an interface and it can be discovered by others.
There will generally be modules that are extremely useful that will already
be available. It is encouraged to minimize the interfaces so that
implementations can properly compete.

### Specification

Along with the interface is the *specification* which describes how an
implementation of the interface should work. This is a set of rules that
enforce the behavior of each function. The system will use this to reject
implementations that misbehave either due to programmer negligence or
maliciousness.

This is a concept that should be (no pun intended there) familiar with
many programmers already. We typically enforce our code by writing tests
as a foundation for writing the code. It is the same here. The tests come
before the implementation. Let's bank on that familiarity and exhibit a
typical test from the ruby language:

```
describe "geometry::circle" do
  describe "intersectsCircle" do
    it "should return true when the circles are same size" do
      a = Circle.new(:radius => 3.0, :center => (0.0, 1.0))
      b = Circle.new(:radius => 3.0, :center => (0.0, 1.0))

      a.intersectsCircle(b).must_equal true
    end

    it "should return true when the circles intersect" do
      a = Circle.new(:radius => 3.0, :center => (0.0, 1.0))
      b = Circle.new(:radius => 3.0, :center => (0.0, 3.0))

      a.intersectsCircle(b).must_equal true
    end

    it "should return false when the circles do not intersect" do
      a = Circle.new(:radius => 3.0, :center => (0.0, 1.0))
      b = Circle.new(:radius => 3.0, :center => (0.0, 8.0))

      a.intersectsCircle(b).wont_equal true
    end
  end
end
```

That's quite a bit of code. Tests tend to have quite a bit of boilerplate.
However, they have to say quite a bit more than the code does. They could
potentially list every possible invocation and check the result. Typically,
to better fulfill this case, we can randomize the inputs for the tests and
ensure a collection of implementations behave the same. Another strategy is
to trust a well-written or perhaps formally verified implementation (that is,
we have mathematically proven the implementation correct) and test another
implementation against the trivially correct result.

With our example in mind, we are only checking 3 invocations out of billions.
Looking at the tests, there are quite a few ways one could beat them.
Trivially, we could provide an implementation aware of the tests and
specifically only gives correct answers for those invocations and wrong
answers any other time. Even without being malicious, bugs can still
occur and typically occur in unexpected circumstances. Human error is
our enemy.

This is fine, however. No amount of human error, curiosity, nor malevolence is
going to collapse this system. When a bug is found in any implementation, a
new specification can be written on any system to catch it. Any individual can
provide a new specification. Therefore, there can be many specifications for an
interface that can be merged together once discovered. Over time, the
specifications will be refined and with them so will the implementations that
follow their guidelines.

### Implementation

The next component may be the most obvious in our system. For every interface,
there is at least one *implementation*. For the system to be useful, there will
actually be many implementations of the same interface. Only here does the
code specialize. That is, an implementation can optimize freely as long as it
abides by the specifications.

There is no particular reason why the choice of programming language should be
constrained. The choice of language will be up to the implementer. Languages
will ideally be freely mixed, although as the system is bootstrapped, this
may not be immediately possible. Systems may also blacklist particular languages
if they do not lend well to the type of safety analysis the particular system
desires.

Any individual can compose an implementation. To do so, discover the interface
and specification, and write code until the specification passes. Once you
have a working module, you can advertise to the network. Once others
discover the work, they can spread the implementation. Generally,
implementations will spread when they fulfill a need or present a better
benchmark. That is, if you write something that is faster than what was there,
it will spread.

### Benchmarks

Performance is generally not going to be major priority for most tasks. The
ability to improve the system is important, however. Thus, as the system
matures, we will want a method of selecting the best code for our system.
*Benchmarks* are very similar to specifications in that they describe a
situation. However, unlike specifications, they describe a workload. That is,
they depict the module in a practical light.

Benchmarks can simply be the specification tests or applications that use
the module. They may be refined to be more specific to improve their
effectiveness. That is, you could use some application that makes use of the
module, but this is course-grained. If you were to pull out only the parts of
that application that make use of the module, you might get better results.
There will be some sweet-spot that will be a better heuristic for overall
performance and optimality of the system.

These benchmarks can, naturally, be shared. It will be advantageous for
people to collect benchmarks from neighbors with similar systems and share
their results.

With benchmarks, implementations can be ranked and sorted and assigned a score
for particular types of situations. This information is shared with others
to better refine the scores. The build system and linker will use this to
decide which implementations to use.

### Kernel

Now we can talk about the *low-level stuff.* Our system presents an interesting
opportunity to throw away (well, re-purpose hopefully!) years of operating
system and kernel overreactions. Popular kernels currently do too much. They
are the ultimate arbiters of access, yet as far as functionality is concerned,
they really do not need to do that much.

Academic researchers have a tendency to see the term Operating System as
having a flexible definition. We are no different. An Operating System is
simply the smallest amount of code needed to discover better code.

With that in mind, the kernel will simply boot the system and cede
control to the application space. This application space will only optionally
isolate control and access to the machine. The machine can build itself the
walls it wishes to have, or leave them open.

Obviously, a machine can locally install a starting environment that is a bit
more pessimistic about its surroundings. That is, it may have an isolated
user environment typical of modern operating systems where applications cannot
access or gain control of devices. This is provided by hardware protection
and assumes a trust in the hardware and a distrust in the individual using
the system mixed with distrust in the contributions or interference of others.

This is a valid concern, especially in a distributed system such as this that
is so openly modifiable by others. Another approach is to trust an analysis
tool to verify that code abides by rules to not touch things it does not
have a right to touch. This is an interesting approach that eliminates the
need to trust or make use of hardware to protect and isolate applications.

Both extremes are fine options. Either will work. However, the choice will
impact some decisions. If you choose the first option, you need to put a
great deal of trust in the kernel and the hardware protection. If you choose
the second, you must trust your compiler and may restrict the languages
that can be used for implementations. Therefore, the decision certainly
impacts what constitutes a base system, which must be trusted in its
entirety.

## Network Model

The internet has provided a means of collaboration that has gone mostly
unused by the open source community. Centralized places dominate. That is,
code is generally located at a known location and has some arbiter that
decides what goes in and who can access. Decentralized collaboration will
be stressed by our system.

Many network arrangements are possible. Systems can collaborate in a closed
system, although that defeats some of the merit. There can be some connection
to the open network where ideas leak out and flow in. However, it will be
encouraged to have as open of a network as possible.

Devices link together and may discover each other by some means. This only
must occur when a device wishes to discover new information. Devices will then
use the network to transfer data, code, new interfaces and specifications, etc.
Other data can be shared as well, such as configurations; for instance network
configurations such that when devices attach to a new local network, they can
quickly optimize their connection.

Discovery can occur at any time. Typically, this will occur when a device
is introduced to a new environment or local network or when a device determines
it does not know a piece of information.

Trust in the information a machine receives is an important issue. Some of the
issue has been discussed above (trust majority opinion, code verification, etc.)
The rest can be ascertained by reputation. The machines in a network can become
established there and can vouch for others. A new identity on a network may not
have a good reputation to be able to share information, but can at least receive.

If a machine is wrong, we lower a value that indicates our trust in it. If it is
correct, we raise it. Over time, a network will have machines that the other
machines will trust, and will share their trust values to new machines on that
network. A reputation system such as this is truly optional (you could ignore the
trust values) but it should strengthen the probabilities of correctness in the
implementations our system propagates overall.

This is a complicated situation with many solutions. Those with far more
knowledge on trust in a network topology will come up with better solutions.
This is certainly an aspect to our system that will evolve as networks tend to
do.

## Motivating Scenarios

Our system provides a means of collaboration that goes beyond the current
scope of the modern open source movement. You do not have to be established
nor have a name to contribute. In a world that attaches far too much meaning
from presumption, this collaboration can elevate the diversity of people
contributing to the whole.

Along with the increase in diversity, we should see a lowering of the barriers
to technology. Software costs should approach zero as hardware costs continue
to decrease. Our system can be dispatched anywhere in the world that has some
functional access to the network at large, either by a direct wire or mailing
a device with implementations on it that you turn on. The rest of the devices
in what used to be a detached section of the network can now spread that payload
among them.

For instance, children will have access to educational software that
automatically updates. Potentially access to the same quality of learning that
every child in the world has access to. When one educator improves the system,
all benefit.

Getting devices to those communities without the infrastructure to produce them
is the main issue. Those with far more hardware knowledge than I can predict
solutions to this problem. The issue that our system attempts to prioritize
is the access to computation from the software level.

## System Commands

`collect`

Will communicate with machines in our vicinity and exchange
information about what data is available. When we discover that
we have useful information, or that there is interesting progress we
would like to acquire, we can communicate to retrieve that information.

Some useful knowledge would be the availability of implementations,
benchmarks, correctness data, implementation blacklists, and knowledge
of other nodes in the system.

It is good to collect when we are introduced to a new system or network.
Levels of trust are human-controlled. You may wish to whitelist friends,
or blacklist enemies, or only share data, etc. This system is not
ashamed to fall-back to a level of distributed trust that is probabilistic.
That is, it is assumed, but not known, that if you talk to enough people,
you will collect enough unique data that a guess can be made with high
certainty.

`discover io::console`

Attempts to discover, by some means, the interface and specification for an
`io::console` module. When it finds some an interface, we are now able to
discover implementations that satisfy the interface and add it to our
library.

`build io::console`

Attempts to build an implementation of `io::console` by finding an
implementation and building it. Once this is successfully called, we know
that we have at least a working implementation of the given module.

`evaluate io::console`

This command will run the module through performance tests we have written
or acquired. Based on the results, we can cache scores of the performance
of the module and submit them to others. When we have more than one
implementation of the given module, we can use our results to rank them
and use only the best module for the specific task.

`verify io::console`

This command will run the module through the various tests we have acquired
for this interface. We can acquire more than one set of tests from other
nodes. Unless we perform manual inspection, we can never be certain that the
tests are evaluating every condition. However, static analysis and careful
evaluation of trust can yield good results. We can also ask our neighbors
for their evaluations of correctness.
