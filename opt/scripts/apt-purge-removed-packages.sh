#!/bin/bash

apt-get purge $(dpkg -l | grep '^rc' | awk '{print $2}')
