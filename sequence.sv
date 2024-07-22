class our_seqence extends uvm_sequence;

    `uvm_object_utils(our_seqence)
    our_packet pkt;

    function new(string name = "our_sequence");
        super.new(name);

    endfunction

    task body();
        pkt = our_packet::type_id::create("Our Packet");

        repeat(10) begin
            start_item(pkt);
            pkt.randomize();
            finish_item(pkt);
        end

    endtask
endclass