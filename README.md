# ENGG100_Project
Project to somehow use Matlab to compute the G-Force and friction experienced by a car in a corner

## So Far
- We've assumed constant Velocity(but assuming a fixed deceleration is probable)

- 2 Values of friction constants, one for regular wheels, rated at $\mu_k=0.7$, and the other for racing(soft) at $\mu_k=0.9$

We'll use the formulas: 
### Friction
$Friction \le \frac{mv^2}{r}$

### G-Force
$G-Force = \frac{acceleration(m/s^2)}{9.8 m/s^2}$

$a = \frac{V^2}{r} = v\omega = \omega^2r$
### Motion Equations

$V = V_0 + at$

$V^2-u^2 = 2as$

## To Do
 Functions
- [x] To input the data(Radius of curvature, Velocity, and Tyre Type(?))
- [ ] G-Force graphs
- [ ] Friction graphs
- [x] To draw said graph
- [ ] Animation of the vehicle on a graph/figure
- [ ] 3D vehicle sprite on the plot, graphing it’s motion
- [ ] banking part if possible

## Functions we need
 Other functions
- [ ] Using GUI(final product), take input for Velocity and radius of curvature of the turn(optional - deceleration) 
- [ ] Functions to compute the G-Force with the velocity and radius of curvature, returning G force(at a specific time 
if we account for some deceleration, but we don't here)(format- inputs= Velocity, radius of curvature, deceleration(0 by default), and angle of bank))
In this case, the angle of the bank affects the Normal, which will act opposite to the G-force, reducing it)
- [ ] Graph the G Force, as the vehicle(below) moves
- [ ] Graph the friction(again, below) with the motion of the vehicle
- [ ] Banking of the curve($\theta$). More equations required. Will also vary the friction
- [ ] Function for friction, with Normal force, or, Mass+$\theta$
- [ ] Animation of the vehicle(2D/3D, if banking is present or not)
- [x] Graphing the road


## Drawing of rough final Figure/Graph
![Rough Representation of the end result/Figure](/Pic.jpg)

# If Banking is considered
![Rough Drawing and hopefully correct equations](/Bank.jpg) 