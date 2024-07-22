class our_monitor extends uvm_monitor;

    // Register the monitor with the UVM factory
    `uvm_component_utils(our_monitor)
  
    our_interface intf;
    our_packet pkt;

    uvm_analysis_port #(our_seqence_item) mon_port;

    // Constructor for the monitor
    function new(string name = "our_monitor", uvm_component parent=null);
      super.new(name, parent);
    endfunction: new
  
    // Main logic for the monitor
    // Implement the main logic for your monitor here
        //build phase
    function void build_phase(uvm_phase phase);
        //build other components
        pkt = our_packet::type_id::create("Our Packet");
      //get method
        uvm_config_db #(virtual our_interface)::get(null, "*", "intf");

        mon_port = new("Monitor Port", this);

    endfunction

    //connect phase
    function void connect_phase (uvm_phase phase);
        //necessary connections

    endfunction

    //run phase
    task run_phase(uvm_phase phase);
        
        forever begin
            @(posedge intf.clk);

                pkt.input_1 <= intf.input_1;
                pkt.input_2 <= intf.input_2;

        end
    endtask
  endclass: our_monitor
  