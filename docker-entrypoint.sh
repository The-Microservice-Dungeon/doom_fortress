#!/bin/bash
bin/rails db:migrate
bin/rails s -b "0.0.0.0" & 
racecar GameConsumer