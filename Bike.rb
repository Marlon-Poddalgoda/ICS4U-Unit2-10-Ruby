#!/usr/bin/env ruby

##
# This class file holds the Bike class.
#
# @author  Marlon Poddalgoda
# @version 1.0
# @since   2021-05-28
# frozen_string_literal: true

load "Vehicle.rb"

# This class makes a bike using the vehicle class
class Bike < Vehicle
    # Uses the constructor from the vehicle class

    # getters
    # gets number of passengers
    def get_passengers
        @num_of_passengers
    end

    # gets number of wheels
    def get_wheels
        @num_of_wheels = 2
        return @num_of_wheels
    end

    # Methods
    # calculates the cadence for a 24" wheel
    def calc_cadence
        # formula to calculate rpm of a wheel
        @cadence = (get_speed / 12 * 2)
        @cadence_int = @cadence.to_i
        return @cadence_int
    end

    # ring bell method
    def ring_bell
        puts "Ding!"
    end
end
