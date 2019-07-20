kubectl exec -it kafka-client -- /bin/bash

kafka-topics --zookeeper kafka-sec-cp-zookeeper-headless:2181 --list

kafka-topics --zookeeper kafka-prm-cp-zookeeper-headless:2181 --describe --topic jacob

#Producer
kafkacat -b localhost:31000 -L -P -t test2

#Consumer
kafkacat -b localhost:31000 -C -t jacob
kafka-console-consumer --bootstrap-server kafka-prm-cp-kafka-headless:9092 --topic test.a --from-beginning --group consumer1
