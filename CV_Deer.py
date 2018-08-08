import sys
from numpy import *
from BicycleModel import *
from matplotlib.pyplot import *
from Driver import *

class CV_Deer:

    def __init__(self,speed = 13.5, dT = 1./60, x = 0., y = 0., Psi0 = 0.):
       
        self.speed = speed
        self.dT = dT
        self.x = x
        self.y = y
        self.Psi0 = Psi0
        self.xdot = 0.
        self.ydot = 0.
        self.x_StartDeer = 60.
        self.xdeer = array([self.speed,self.x,self.y])

    def updateDeer(self,x_Car):

        if (self.x - x_Car) > self.x_StartDeer:
            speed_now = 0

        else:
            speed_now = self.speed

        self.xdot = speed_now*sin(self.Psi0)
        self.ydot = speed_now*cos(self.Psi0)
        print self.xdot
        print self.ydot

        self.x += self.dT * self.xdot
        self.y += self.dT * self.ydot

        self.xdeer = array([self.speed,self.Psi0, self.x, self.y])
        return self.xdeer

if __name__=='__main__':

    #set up our deer
    deer = CV_Deer()
    deer.x = 80
    deer.y = -2

    simtime = 10
    dt = deer.dT
    t = arange(0,simtime,dt) #takes min, max, and timestep

    #now set up the car's parameters
    car = BicycleModel(dT=dt)
    car.x[3] = 20
    steervec = zeros(len(t))

    #set up the driver
    driver = Driver(dt = dt)
    drive = zeros(3)

    #initialize matrices to hold simulation data
    #car state vector #print array([[Ydot],[vdot],[Xdot],[Udot],[Psidot],[rdot]])
    carx = zeros((len(t),len(car.x)))
    carx[0,:] = car.x

    #initialize for deer as well
    deerx = zeros((len(t),4))
    #fill in initial conditions because they're nonzero
    deerx[0,:] = array([deer.speed,deer.Psi0,deer.x,deer.y])

    #now simulate!!
    for k in range(1,len(t)):

        carx_now = carx[k-1,:]
        #print carx_now

        drive[:] = driver.driving(carx = carx_now, deer_x = deerx[k-1,2], setSpeed = 20, brake = 'on', yr = -3.5)

        carx[k,:],junk=car.heuns_update(brake = drive[1], gas = drive[0], steer = drive[2], cruise = 'off')
        deerx[k,:] = deer.updateDeer(car.x[2])
        print deerx[k,:]

    distance = sqrt((carx[:,2]-deerx[:,2])**2+(carx[:,0]-deerx[:,3])**2)

    #now plot stuff
    figure()
    plot(carx[:,2],carx[:,0],'ko',deerx[:,2],deerx[:,3],'ro')

    figure()
    subplot(2,1,1)
    plot(t,deerx[:,2])
    subplot(2,1,2)
    plot(t,deerx[:,3])

    figure()
    subplot(2,1,1)
    plot(t,deerx[:,0])
    subplot(2,1,2)
    plot(t,carx[:,2])

    figure()
    plot(t, carx[:,3])

    figure()
    plot(t,distance)


    show()