`include "uvm_macros.svh" // file that contains basic macros

import uvm_pkg::*;

module top();

    our_interface intf(); //instantiated our interface

    our_design uut(); //instantiate our design

    initial begin
        //set method
        uvm_config_db #(virtual our_interface)::set(null, "*", "intf", intf);
    end
    
    initial begin
        run_test ("our_test");
    end
endmodule
