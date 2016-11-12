#!/bin/bash
PASS=admin
USER=admin
cat > /etc/rabbitmq/rabbitmq.config <<EOF
[
        {rabbit, [{default_user, <<"$USER">>},{default_pass, <<"$PASS">>},{tcp_listeners, [{"0.0.0.0", 5672}]}]}
].
EOF



