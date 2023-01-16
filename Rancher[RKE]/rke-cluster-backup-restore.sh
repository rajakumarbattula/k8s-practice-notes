--FROM-WINDOWS-CMD---
rke etcd snapshot-save ^
--config cluster.yml ^
--name cluster-backup ^
--s3 ^
--access-key AKIA2QEFLENWI7WIV5FI ^
--secret-key 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 ^
--bucket-name k8sb10bucket ^
--folder rkebackup ^
--s3-endpoint s3.amazonaws.com

--FROM-LINUX-SHELL---

rke etcd snapshot-save \
    --config cluster.yml \
    --name cluster-backup \
    --s3 \
    --access-key AKIA2QEFLENWI7WIV5FI \
    --secret-key 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 \
    --bucket-name k8sb10bucket \
    --folder rkebackup \
    --s3-endpoint s3.amazonaws.com
