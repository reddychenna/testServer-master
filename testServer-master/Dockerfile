#Dockefile for creating a docker image : Ubuntu + Pyhton + Robotframework + Testcase.
# Going forward, the testcases shoule be picked from a filename, which is passwed as
# environment variable.
#Commnet
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-pip wget gcc phantomjs firefox

RUN apt-get install -y xvfb

RUN apt-get install -y lynx

RUN apt-get install sudo 

RUN sudo apt install  -y apache2

RUN sudo apt install -y vim

RUN sudo pip install Flask

RUN pip install robotframework
RUN pip install robotframework-sshlibrary
RUN pip install robotframework-selenium2library
RUN pip install Flask-SqlAlchemy
EXPOSE 6000

WORKDIR  /home

RUN  mkdir -pv /home/templates/
ADD test1.robot /home

ADD geckodriver /usr/bin 

#ADD  /sbin/ifconfig /home
#ENTRYPOINT ["/usr/bin/python", "app4.py"]


#ENTRYPOINT ["robot","/home/test1.robot"]



#ENTRYPOINT ["nohup", "robot","/home/test1", "&"]
#Added comment to checkin the file.
