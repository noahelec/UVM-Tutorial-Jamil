class our_agent extends uvm_agent;

    `uvm_component_utils(our_agent)

    our_sequencer seqr;
    our_driver drv;
    our_monitor mon;

    function new (string name = "our_agent", uvm_component parent = null);
        super.new (name,parent);
    endfunction

        //build phase
    function void build_phase(uvm_phase phase);
        //build other components
        //build sequencer, monitor , driver

        seqr = our_sequencer::type_id::create("seqr", this);
        drv = our_driver::type_id::create("drv", this);
        mon = our_monitor::type_id::create("mon", this);

    endfunction

    //connect phase
    function void connect_phase (uvm_phase phase);
        //necessary connections
        drv.seq_item_port.connect(seqr.seq_item_export)
    endfunction

    //run phase
    task run_phase(uvm_phase phase);

    //main logic
    endtask
endclass: our_agent