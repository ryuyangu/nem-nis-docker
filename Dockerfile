#
# nis local node server
#
FROM java:8-jre
COPY nis-ncc /var/lib/nis

ARG VERSION="0.6.96"

# envs for nis config
ENV NEM_SHORT_SERVER_NAME=Nis \
    NEM_FOLDER=/var/run/nem \
    NEM_MAX_THREADS=500 \
    NEM_PROTOCOL=http \
    NEM_HOST=127.0.0.1 \
    NEM_HTTP_PORT=7890 \
    NEM_HTTPS_PORT=7891 \
    NEM_WEBSOCKET_PORT=7778 \
    NEM_WEB_CONTEXT= \
    NEM_API_CONTEXT= \
    NEM_HOME_PATH= \
    NEM_SHUTDOWN_PATH=/shutdown \
    NEM_USE_DOS_FILTER=true \
    NEM_NON_AUDITED_API_PATHS=/heartbeat|/status|/chain/height|/chain/score|/chain/last-block|/chain/hashes-from|/push/transaction|/node/ping|/node/info|/node/extended-info|/node/peer-list/active|/account/get|/account/status|/account/unconfirmedTransactions|/account/transfers/all|/account/get/batch \
    NEM_NETWORK=mainnet \
    NIS_SHOULD_AUTO_BOOT=true \
    NIS_SHOULD_AUTO_HARVEST_ON_BOOT=true \
    NIS_ADDITIONAL_HARVESTER_PRIVATE_KEYS= \
    NIS_NODE_LIMIT=5 \
    NIS_TIME_SYNC_NODE_LIMIT=20 \
    NIS_USE_BINARY_TRANSPORT=true \
    NIS_USE_NETWORK_TIME=true \
    NIS_IP_DETECTION_MODE=AutoRequired \
    NIS_UNLOCKED_LIMIT=4 \
    NIS_ALLOWED_HARVESTER_ADDRESSES= \
    NIS_MAX_TRANSACTIONS=10000 \
    NIS_MAX_TRANSACTIONS_PER_BLOCK=120 \
    NIS_BLOCK_GENERATION_TARGET_TIME=60 \
    NIS_BLOCK_CHAIN_REWRITE_LIMIT=360 \
    NIS_ADDITIONAL_LOCAL_IPS= \
    NIS_TRANSACTION_HASH_RETENTION_TIME=36 \
    NIS_OPTIONAL_FEATURES=TRANSACTION_HASH_LOOKUP \
    NIS_BLOCK_CHAIN_FEATURES=PROOF_OF_IMPORTANCE|WB_TIME_BASED_VESTING \
    NIS_DELAY_BLOCK_LOADING=true

ENV NEM_JAVA_MEMORY=512M

WORKDIR /var/lib/nis
COPY entrypoint.sh /var/lib/nis/entrypoint.sh
RUN chmod +x /var/lib/nis/entrypoint.sh
RUN chmod +x /var/lib/nis/nisStart.sh

VOLUME ["/var/run/nem"]

EXPOSE 7890

ENTRYPOINT ["/var/lib/nis/entrypoint.sh"]
CMD ["/var/lib/nis/nisStart.sh"]


