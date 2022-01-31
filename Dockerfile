FROM inputoutput/cardano-node

RUN mkdir /config
COPY ./tesnet/testnet-config.json /config
COPY ./tesnet/testnet-topology.json /config

#docker run -v cardano-node-ipc:/ipc -v cardano-node-data:/data  -v cardano_node_config:/config miner_cardano run