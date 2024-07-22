class our_driver extends uvm_driver #(our_packet);

    // Define the sequence item template for the driver
    
  
    // Register the driver with the UVM factory
    `uvm_component_utils(our_driver)
  
    our_interface intf; //instantiated our interface
    our_packet    pkt;

    // Constructor for the driver
    function new(string name = "our_driver", uvm_component parent=null);
      super.new(name, parent);
    endfunction: new
  
    // Main logic for the driver
    // Implement the main logic for your driver here
      //build phase
    function void build_phase(uvm_phase phase);
        //build other components
      pkt = our_packet::type_id::create("Our_Packet")
      //get method
      uvm_config_db #(virtual our_interface)::get(null, "*", "intf");

    endfunction

    //connect phase
    function void connect_phase (uvm_phase phase);
        //necessary connections
    endfunction

    //run phase
    task run_phase(uvm_phase phase);

      forever begin
        @(posedge intf.clk)

          seq_item_port.get_next_item(pkt);

          intf.input_1 <= pkt.input_1;
          intf.input_2 <= pkt.input_2;

          seq_item_port.item_done
      end
    //main logic
    endtask
  endclass: our_driver
  