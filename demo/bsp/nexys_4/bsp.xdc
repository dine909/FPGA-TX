set_property PACKAGE_PIN E3 [get_ports clk_in]                            
set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in]

set_property PACKAGE_PIN C12 [get_ports rst]   
set_property IOSTANDARD LVCMOS25 [get_ports rst]

set_property PACKAGE_PIN T8 [get_ports {gpio_leds[0]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[0]}]
set_property PACKAGE_PIN V9 [get_ports {gpio_leds[1]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[1]}]
set_property PACKAGE_PIN R8 [get_ports {gpio_leds[2]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[2]}]
set_property PACKAGE_PIN T6 [get_ports {gpio_leds[3]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[3]}]
set_property PACKAGE_PIN T5 [get_ports {gpio_leds[4]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[4]}]
set_property PACKAGE_PIN T4 [get_ports {gpio_leds[5]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[5]}]
set_property PACKAGE_PIN U7 [get_ports {gpio_leds[6]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[6]}]
set_property PACKAGE_PIN U6 [get_ports {gpio_leds[7]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[7]}]
set_property PACKAGE_PIN V4 [get_ports {gpio_leds[8]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[8]}]
set_property PACKAGE_PIN U3 [get_ports {gpio_leds[9]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[9]}]
set_property PACKAGE_PIN V1 [get_ports {gpio_leds[10]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[10]}]
set_property PACKAGE_PIN R1 [get_ports {gpio_leds[11]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[11]}]
set_property PACKAGE_PIN P5 [get_ports {gpio_leds[12]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[12]}]
set_property PACKAGE_PIN U1 [get_ports {gpio_leds[13]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[13]}]
set_property PACKAGE_PIN R2 [get_ports {gpio_leds[14]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[14]}]
set_property PACKAGE_PIN P2 [get_ports {gpio_leds[15]}]                  
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_leds[15]}]


set_property PACKAGE_PIN U9 [get_ports {gpio_switches[0]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[0]}]
set_property PACKAGE_PIN U8 [get_ports {gpio_switches[1]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[1]}]
set_property PACKAGE_PIN R7 [get_ports {gpio_switches[2]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[2]}]
set_property PACKAGE_PIN R6 [get_ports {gpio_switches[3]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[3]}]
set_property PACKAGE_PIN R5 [get_ports {gpio_switches[4]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[4]}]
set_property PACKAGE_PIN V7 [get_ports {gpio_switches[5]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[5]}]
set_property PACKAGE_PIN V6 [get_ports {gpio_switches[6]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[6]}]
set_property PACKAGE_PIN V5 [get_ports {gpio_switches[7]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[7]}]
set_property PACKAGE_PIN U4 [get_ports {gpio_switches[8]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[8]}]
set_property PACKAGE_PIN V2 [get_ports {gpio_switches[9]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[9]}]
set_property PACKAGE_PIN U2 [get_ports {gpio_switches[10]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[10]}]
set_property PACKAGE_PIN T3 [get_ports {gpio_switches[11]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[11]}]
set_property PACKAGE_PIN T1 [get_ports {gpio_switches[12]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[12]}]
set_property PACKAGE_PIN R3 [get_ports {gpio_switches[13]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[13]}]
set_property PACKAGE_PIN P3 [get_ports {gpio_switches[14]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[14]}]
set_property PACKAGE_PIN P4 [get_ports {gpio_switches[15]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_switches[15]}]

set_property PACKAGE_PIN E16 [get_ports gpio_buttons[0]]                      
set_property IOSTANDARD LVCMOS25 [get_ports gpio_buttons[0]]
set_property PACKAGE_PIN F15 [get_ports gpio_buttons[1]]                      
set_property IOSTANDARD LVCMOS25 [get_ports gpio_buttons[1]]
set_property PACKAGE_PIN T16 [get_ports gpio_buttons[2]]                      
set_property IOSTANDARD LVCMOS33 [get_ports gpio_buttons[2]]
set_property PACKAGE_PIN R10 [get_ports gpio_buttons[3]]                      
set_property IOSTANDARD LVCMOS33 [get_ports gpio_buttons[3]]
set_property PACKAGE_PIN V10 [get_ports gpio_buttons[4]]                      
set_property IOSTANDARD LVCMOS33 [get_ports gpio_buttons[4]]

set_property PACKAGE_PIN C4 [get_ports rs232_rx]                       
set_property IOSTANDARD LVCMOS33 [get_ports rs232_rx]
set_property PACKAGE_PIN D4 [get_ports rs232_tx]                       
set_property IOSTANDARD LVCMOS33 [get_ports rs232_tx]

set_property PACKAGE_PIN L3 [get_ports {seven_segment_cathode[0]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[0]}]
set_property PACKAGE_PIN N1 [get_ports {seven_segment_cathode[1]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[1]}]
set_property PACKAGE_PIN L5 [get_ports {seven_segment_cathode[2]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[2]}]
set_property PACKAGE_PIN L4 [get_ports {seven_segment_cathode[3]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[3]}]
set_property PACKAGE_PIN K3 [get_ports {seven_segment_cathode[4]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[4]}]
set_property PACKAGE_PIN M2 [get_ports {seven_segment_cathode[5]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[5]}]
set_property PACKAGE_PIN L6 [get_ports {seven_segment_cathode[6]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_cathode[6]}]

set_property PACKAGE_PIN N6 [get_ports {seven_segment_annode[0]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[0]}]
set_property PACKAGE_PIN M6 [get_ports {seven_segment_annode[1]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[1]}]
set_property PACKAGE_PIN M3 [get_ports {seven_segment_annode[2]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[2]}]
set_property PACKAGE_PIN N5 [get_ports {seven_segment_annode[3]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[3]}]
set_property PACKAGE_PIN N2 [get_ports {seven_segment_annode[4]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[4]}]
set_property PACKAGE_PIN N4 [get_ports {seven_segment_annode[5]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[5]}]
set_property PACKAGE_PIN L1 [get_ports {seven_segment_annode[6]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[6]}]
set_property PACKAGE_PIN M1 [get_ports {seven_segment_annode[7]}]                    
set_property IOSTANDARD LVCMOS33 [get_ports {seven_segment_annode[7]}]

set_property PACKAGE_PIN F16 [get_ports scl]                    
set_property IOSTANDARD LVCMOS25 [get_ports scl]
set_property PACKAGE_PIN G16 [get_ports sda]                    
set_property IOSTANDARD LVCMOS25 [get_ports sda]

#set_property PACKAGE_PIN C9 [get_ports phymdc]                     
#set_property IOSTANDARD LVCMOS33 [get_ports phymdc]
#set_property PACKAGE_PIN A9 [get_ports phymdio]                    
#set_property IOSTANDARD LVCMOS33 [get_ports phymdio]
#set_property PACKAGE_PIN B8 [get_ports phyintn]                    
#set_property IOSTANDARD LVCMOS33 [get_ports phyintn]

set_property PACKAGE_PIN B3 [get_ports phy_reset_n]                    
set_property IOSTANDARD LVCMOS33 [get_ports phy_reset_n]
set_property PACKAGE_PIN D9 [get_ports rxdv]                     
set_property IOSTANDARD LVCMOS33 [get_ports rxdv]
set_property PACKAGE_PIN C10 [get_ports rxer]                  
set_property IOSTANDARD LVCMOS33 [get_ports rxer]
set_property PACKAGE_PIN D10 [get_ports {rxd[0]}]               
set_property IOSTANDARD LVCMOS33 [get_ports {rxd[0]}]
set_property PACKAGE_PIN C11 [get_ports {rxd[1]}]               
set_property IOSTANDARD LVCMOS33 [get_ports {rxd[1]}]
set_property PACKAGE_PIN B9 [get_ports txen]                    
set_property IOSTANDARD LVCMOS33 [get_ports txen]
set_property PACKAGE_PIN A10 [get_ports {txd[0]}]               
set_property IOSTANDARD LVCMOS33 [get_ports {txd[0]}]
set_property PACKAGE_PIN A8 [get_ports {txd[1]}]                
set_property IOSTANDARD LVCMOS33 [get_ports {txd[1]}]

set_property PACKAGE_PIN D5 [get_ports eth_clk]                
set_property IOSTANDARD LVCMOS33 [get_ports eth_clk]


set_property PACKAGE_PIN K5 [get_ports led_r_pwm]					
set_property IOSTANDARD LVCMOS33 [get_ports led_r_pwm]
set_property PACKAGE_PIN F13 [get_ports led_g_pwm]				
set_property IOSTANDARD LVCMOS25 [get_ports led_g_pwm]
set_property PACKAGE_PIN F6 [get_ports led_b_pwm]	
set_property IOSTANDARD LVCMOS33 [get_ports led_b_pwm]

set_property PACKAGE_PIN F4 [get_ports kc]						
set_property IOSTANDARD LVCMOS33 [get_ports kc]
set_property PULLUP true [get_ports kc]

set_property PACKAGE_PIN B2 [get_ports kd]					
set_property IOSTANDARD LVCMOS33 [get_ports kd]	
set_property PULLUP true [get_ports kd]

set_property PACKAGE_PIN A3 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
set_property PACKAGE_PIN B4 [get_ports {vga_r[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN C5 [get_ports {vga_r[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN A4 [get_ports {vga_r[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]
set_property PACKAGE_PIN B7 [get_ports {vga_b[0]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN C7 [get_ports {vga_b[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN D7 [get_ports {vga_b[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN D8 [get_ports {vga_b[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]
set_property PACKAGE_PIN C6 [get_ports {vga_g[0]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN A5 [get_ports {vga_g[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN B6 [get_ports {vga_g[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN A6 [get_ports {vga_g[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]
set_property PACKAGE_PIN B11 [get_ports hsynch]						
set_property IOSTANDARD LVCMOS25 [get_ports hsynch]
set_property PACKAGE_PIN B12 [get_ports vsynch]						
set_property IOSTANDARD LVCMOS25 [get_ports vsynch]

set_property PACKAGE_PIN A11 [get_ports audio]						
set_property IOSTANDARD LVCMOS25 [get_ports audio]

set_property PACKAGE_PIN D12 [get_ports audio_en]						
set_property IOSTANDARD LVCMOS25 [get_ports audio_en]

set_property PACKAGE_PIN F14 [get_ports rf_out]						
set_property IOSTANDARD LVCMOS25 [get_ports rf_out]

