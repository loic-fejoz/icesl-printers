-- Wanhao D12 Duplicator profile
-- Loïc Fejoz 2021-07-20

-- #####################
-- Build Area dimensions
-- #####################
bed_size_x_mm = 230
bed_size_y_mm = 230
bed_size_z_mm = 250

-- #################
-- Printer Extruders
-- #################
extruder_count = 2
nozzle_diameter_mm = 0.4
filament_diameter_mm = 1.75
z_offset = 0.0

-- ###################
-- Retraction Settings
-- ###################
filament_priming_mm = 4.0
priming_mm_per_sec = 40
retract_mm_per_sec = 40

extruder_swap_retract_length_mm = 100.0
extruder_swap_retract_speed_mm_per_sec = 90.0

-- ###################
-- Layer height limits
-- ###################
z_layer_height_mm = 0.2
z_layer_height_mm_min = nozzle_diameter_mm * 0.125
z_layer_height_mm_max = nozzle_diameter_mm * 0.8

-- ############################
-- Printing temperatures limits
-- ############################
extruder_temp_degree_c = 200
extruder_temp_degree_c_min = 150
extruder_temp_degree_c_max = 270

bed_temp_degree_c = 55
bed_temp_degree_c_min = 0
bed_temp_degree_c_max = 120

-- #####################
-- Printing speed limits
-- #####################
print_speed_mm_per_sec = 50
print_speed_mm_per_sec_min = 5
print_speed_mm_per_sec_max = 150

perimeter_print_speed_mm_per_sec = 40
perimeter_print_speed_mm_per_sec_min = 5
perimeter_print_speed_mm_per_sec_max = 80

first_layer_print_speed_mm_per_sec = 25
first_layer_print_speed_mm_per_sec_min = 1
first_layer_print_speed_mm_per_sec_max = 80

travel_speed_mm_per_sec = 120
travel_speed_mm_per_sec_min = 60
travel_speed_mm_per_sec_max = 200

-- #####################
-- Acceleration settings
-- #####################
use_acc_jerk_settings = false
default_acc = 800 -- mm/s²
perimeter_acc = 800 -- mm/s²
infill_acc = 800 -- mm/s²
travel_acc = 1500 -- mm/s²

default_jerk = 5.00 -- mm/s
perimeter_jerk = 5.00 -- mm/s
infill_jerk = 5.00 -- mm/s
travel_jerk = 5.00 -- mm/s

-- #############
-- Misc settings
-- #############
-- Purge Tower
gen_tower = true
-- tower_side_x_mm = 10.0
-- tower_side_y_mm = 5.0
-- tower_brim_num_contours = 12

-- tower_at_location = true
-- tower_location_x_mm = 230
-- tower_location_y_mm = 100

-- brim
add_brim = false
brim_distance_to_print = 1.0
brim_num_contours = 4

-- flow management
enable_flow_management =  false

-- flow override
emable_flow_override = false
flow_override = 96 --  default value as PLA !

-- pressure advance
pressure_adv = 0.09

-- misc
process_thin_features = false

-- #############################################
-- Procedure to fill brushes / extruder settings
-- #############################################
for i = 0, max_number_extruders, 1 do
  _G['nozzle_diameter_mm_'..i] = nozzle_diameter_mm
  _G['filament_diameter_mm_'..i] = filament_diameter_mm
  _G['filament_priming_mm_'..i] = filament_priming_mm
  _G['priming_mm_per_sec_'..i] = priming_mm_per_sec
  _G['retract_mm_per_sec_'..i] = retract_mm_per_sec
  _G['extruder_temp_degree_c_' ..i] = extruder_temp_degree_c
  _G['extruder_temp_degree_c_'..i..'_min'] = extruder_temp_degree_c_min
  _G['extruder_temp_degree_c_'..i..'_max'] = extruder_temp_degree_c_max
  _G['extruder_mix_count_'..i] = 1
end
