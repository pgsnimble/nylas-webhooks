#!/bin/env bash

nylas init <<EOF

$NYLAS_CLIENT_ID
$NYLAS_CLIENT_SECRET

EOF

sleep 5

nylas webhook tunnel -f $WEBHOOK_URL