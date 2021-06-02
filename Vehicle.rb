#!/usr/bin/env ruby

##
# This program holds the vehicle class.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-28
# frozen_string_literal: true

class Vehicle
    # Class for Vehicle

    # initialize (constructor)
    def initialize(input_passengers, input_colour)
        # fields
        @license_num = "" # instances won't run without these
        @cadence = 0 # instances won't run without these
        @pressurized_air = 0 # instances won't run without these
        @num_of_passengers = input_passengers
        @colour = input_colour
        @speed = 0
        @max_speed = 120
        raise "Cannot initialize abstract Vehicle class."
    end

    # getters
    # returns colour
    def get_colour
        return colour
    end

    # returns speed
    def get_speed
        return speed
    end

    # setters
    # set colour
    def set_colour(input_colour)
        @colour = input_colour
    end

    # methods
    # accelerate method
    def accelerate(increase_speed)
        # adds speed
        @speed += increase_speed

        if @speed > @max_speed
            @speed = @max_speed
            return @speed
        else
            return @speed
        end
    end

    # brake method
    def brake(reduce_speed)
        # removes speed
        @speed -= reduce_speed

        if @speed < 0
            @speed = 0
            return @speed
        else
            return @speed
        end
    end

    # print method
    def print_info
        # prints all vehicle info
        puts "The colour of this vehicle is #{@colour}."
        puts "The current speed of this vehicle is #{@speed} km/h."
        puts "The maximum speed of this vehicle is #{@max_speed} km/h."
    end
end
