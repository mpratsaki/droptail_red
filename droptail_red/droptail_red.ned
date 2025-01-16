package inet.examples.droptail_red;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.bgp.BgpRouter;
import inet.node.inet.StandardHost;
import inet.node.inet.Router;
import ned.DatarateChannel;


network droptail_red
{
    @display("bgb=776,411");
    submodules:
        router2: Router {
            @display("p=464,192");
            gates:
                pppg[5];
        }
        router1: Router {
            @display("p=299,192");
            gates:
                pppg[3]; 
        }
        sender2: StandardHost {
            @display("p=150,267");
            gates:
                pppg[1];
        }
        sender1: StandardHost {
            @display("p=150,79");
            gates:
                pppg[1]; 
        }
        sender3: StandardHost {
            @display("p=464,68");
            gates:
                pppg[1];
        }
        receiver2: StandardHost {
            @display("p=633,118");
            gates:
                pppg[1]; 
        }
        receiver1: StandardHost {
            @display("p=633,241");
            gates:
                pppg[1]; 
        }
        receiver3: StandardHost {
            @display("p=464,298");
            gates:
                pppg[1];
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=58,180");
        }
    connections:
        sender1.pppg[0] <--> DatarateChannel { datarate = 9 Mbps; delay = 20ms; } <--> router1.pppg[0];
        sender2.pppg[0] <--> DatarateChannel { datarate = 2 Mbps; delay = 20ms; } <--> router1.pppg[1];
        sender3.pppg[0] <--> DatarateChannel { datarate = 20 Mbps; delay = 20ms; } <--> router2.pppg[0];
        router1.pppg[2] <--> DatarateChannel { datarate = 2 Mbps; delay = 20ms; } <--> router2.pppg[1];
        receiver1.pppg[0] <--> DatarateChannel { datarate = 2 Mbps; delay = 20ms; } <--> router2.pppg[2];
        receiver2.pppg[0] <--> DatarateChannel { datarate = 4 Mbps; delay = 20ms; } <--> router2.pppg[3];
        receiver3.pppg[0] <--> DatarateChannel { datarate = 2 Mbps; delay = 20ms; } <--> router2.pppg[4];
}
