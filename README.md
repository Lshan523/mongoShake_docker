# mongoShake_docker
mongoShake 2.6.5



sudo docker build  -t  happysea/mongoshake:2.6.5



启动：
sudo docker run -itd --rm   --name=mongoshake --restart unless-stopped  
-e tunnel_address=seamgtest@192.168.18.51:9092  \
-e log_dir=./logs/  \
-e sync_mode=incr  \
-e mongo_urls=mongodb://root:root@192.168.18.176:27018,192.168.18.176:27019,192.168.18.176:27020 \
-e tunnel=kafka \
-e tunnel_address=mongosheketopic@192.168.18.51:9092　\
-e tunnel_kafka_partition_number=1
-e tunnel_message=json  \
-e incr_sync_mongo_fetch_method=oplog
happysea/mongoshake:2.6.5
