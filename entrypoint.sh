#!/usr/bin/env bash

set -e

echo nem.shortServerName = $NEM_SHORT_SERVER_NAME >> /var/lib/nis/config.properties
echo nem.folder = $NEM_FOLDER >> /var/lib/nis/config.properties
echo nem.maxThreads = $NEM_MAX_THREADS >> /var/lib/nis/config.properties
echo nem.protocol = $NEM_PROTOCOL >> /var/lib/nis/config.properties
echo nem.host = $NEM_HOST >> /var/lib/nis/config.properties
echo nem.httpPort = $NEM_HTTP_PORT >> /var/lib/nis/config.properties
echo nem.httpsPort = $NEM_HTTPS_PORT >> /var/lib/nis/config.properties
echo nem.websocketPort = $NEM_WEBSOCKET_PORT >> /var/lib/nis/config.properties
echo nem.webContext = $NEM_WEB_CONTEXT >> /var/lib/nis/config.properties
echo nem.apiContext = $NEM_API_CONTEXT >> /var/lib/nis/config.properties
echo nem.homePath = $NEM_HOME_PATH >> /var/lib/nis/config.properties
echo nem.shutdownPath = $NEM_SHUTDOWN_PATH >> /var/lib/nis/config.properties
echo nem.useDosFilter = $NEM_USE_DOS_FILTER >> /var/lib/nis/config.properties
echo nem.nonAuditedApiPaths = $NEM_NON_AUDITED_API_PATHS >> /var/lib/nis/config.properties
echo nem.network = $NEM_NETWORK >> /var/lib/nis/config.properties
echo nis.shouldAutoBoot = $NIS_SHOULD_AUTO_BOOT >> /var/lib/nis/config.properties
echo nis.shouldAutoHarvestOnBoot = $NIS_SHOULD_AUTO_HARVEST_ON_BOOT >> /var/lib/nis/config.properties
echo nis.additionalHarvesterPrivateKeys = $NIS_ADDITIONAL_HARVESTER_PRIVATE_KEYS >> /var/lib/nis/config.properties
echo nis.nodeLimit = $NIS_NODE_LIMIT >> /var/lib/nis/config.properties
echo nis.timeSyncNodeLimit = $NIS_TIME_SYNC_NODE_LIMIT >> /var/lib/nis/config.properties
echo nis.useBinaryTransport = $NIS_USE_BINARY_TRANSPORT >> /var/lib/nis/config.properties
echo nis.useNetworkTime = $NIS_USE_NETWORK_TIME >> /var/lib/nis/config.properties
echo nis.ipDetectionMode = $NIS_IP_DETECTION_MODE >> /var/lib/nis/config.properties
echo nis.unlockedLimit = $NIS_UNLOCKED_LIMIT >> /var/lib/nis/config.properties
echo nis.allowedHarvesterAddresses = $NIS_ALLOWED_HARVESTER_ADDRESSES >> /var/lib/nis/config.properties
echo nis.maxTransactions = $NIS_MAX_TRANSACTIONS >> /var/lib/nis/config.properties
echo nis.maxTransactionsPerBlock = $NIS_MAX_TRANSACTIONS_PER_BLOCK >> /var/lib/nis/config.properties
echo nis.blockGenerationTargetTime = $NIS_BLOCK_GENERATION_TARGET_TIME >> /var/lib/nis/config.properties
echo nis.blockChainRewriteLimit = $NIS_BLOCK_CHAIN_REWRITE_LIMIT >> /var/lib/nis/config.properties
echo nis.additionalLocalIps = $NIS_ADDITIONAL_LOCAL_IPS >> /var/lib/nis/config.properties
echo nis.transactionHashRetentionTime = $NIS_TRANSACTION_HASH_RETENTION_TIME >> /var/lib/nis/config.properties
echo nis.optionalFeatures = $NIS_OPTIONAL_FEATURES >> /var/lib/nis/config.properties
echo nis.blockChainFeatures = $NIS_BLOCK_CHAIN_FEATURES >> /var/lib/nis/config.properties
echo nis.delayBlockLoading = $NIS_DELAY_BLOCK_LOADING >> /var/lib/nis/config.properties

exec "$@"
