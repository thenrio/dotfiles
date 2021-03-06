#!/usr/bin/env bash
#
# alternatives installed like so
#
# sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_40/bin/java 20 --slave /usr/bin/javac javac /opt/jdk/jdk1.8.0_40/bin/javac
#
# sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_75/bin/java 11 --slave /usr/bin/javac javac /opt/jdk/jdk1.7.0_75/bin/javac
#
# can toggle "system" java using
#
#   update-alternatives --set java /opt/jdk/jdk1.7.0_75/bin/java
#
# or
#
#   update-alternatives --config java
#
alias clipme='eclipse >& /dev/null'
