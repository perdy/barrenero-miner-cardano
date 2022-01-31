Cardano Miner


docker volume create cardano-node-data
docker volume create cardano-node-ipc
docker volume create --opt type=none --opt device=/Users/afloresortega/cardano/ --opt o=bind cardano-node-config 

docker run -v cardano-node-ipc:/ipc -v cardano-node-data:/data -v cardano-node-config:/config  inputoutput/cardano-node run --config /config/testnet-config.json --topology /config/testnet-topology.json
docker run -v cardano-node-ipc:/ipc -v cardano-node-data:/data -v miner_cardano inputoutput/cardano-node run --config /config/testnet-config.json --topology /config/testnet-topology.json

