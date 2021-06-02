#!/usr/bin/env ruby

##
# This class file holds the Truck class.
#
# @author  Marlon Poddalgoda
# @version 1.0
# @since   2021-05-28
# frozen_string_literal: true

load "Vehicle.rb"

# This class makes a truck using the vehicle class
class Truck < Vehicle
    # Uses the constructor from the airplane class

    # getters
    # returns number of passengers
    def get_passengers
        @num_of_passengers
    end

    # returns license
    def get_license
        return @license_num
    end

    # gets number of wheels
    def get_wheels
        @num_of_wheels = 18
        return @num_of_wheels
    end

    # Setter
    # sets the license of the truck
    def set_license(input_license)
        @license_num = input_license
    end

    # methods
    # air pressure method
    def provide_air(input_air)
        @pressurized_air += input_air
        return @pressurized_air
    end
end
