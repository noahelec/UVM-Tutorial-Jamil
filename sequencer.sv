class our_sequencer extends uvm_sequencer #(our_packet);

    // Define the sequence item template for the sequencer

  
    // Register the sequencer with the UVM factory
    `uvm_component_utils(our_sequencer)
  
    // Constructor for the sequencer
    function new(string name = "our_sequencer", uvm_component parent=null);
      super.new(name, parent);
    endfunction: new
  
    // Main logic for the sequencer
    // Implement the main logic for your sequencer here
  
        //build phase
    function void build_phase(uvm_phase phase);
        //build other components
    endfunction

    //connect phase
    function void connect_phase (uvm_phase phase);
        //necessary connections

    endfunction

    //run phase
    task run_phase(uvm_phase phase);

    //main logic
    endtask
  endclass: our_sequencer
  