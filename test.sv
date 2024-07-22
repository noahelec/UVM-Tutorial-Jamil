class our_test extends uvm_test; //our_test is child of uvm_test

    `uvm_component_utils (our_test)

    //instantiate classes
    our_env env

    //constructor
    function new( string name = "our_test", uvm_component parent = null);
        super.new (name, parent);
    endfunction

    //build phase
    function void build_phase(uvm_phase phase);
        //build other components
        //build env class here
        env = our_env :: type_id :: create("env", this); //create env object
    endfunction

    //connect phase
    function void connect_phase (uvm_phase phase);
        //necessary connections

    endfunction

    //run phase
    task run_phase(uvm_phase phase);

        //main logic
    endtask

    //methods
    //properites

endclass