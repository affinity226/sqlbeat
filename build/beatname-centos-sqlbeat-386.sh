#!/bin/bash

# Script to run {.beat_name} in foreground with the same path settings that
# the init script / systemd unit file would do.

/usr/share/sqlbeat/bin/sqlbeat \
  -path.home /usr/share/sqlbeat \
  -path.config /etc/sqlbeat \
  -path.data /var/lib/sqlbeat \
  -path.logs /var/log/sqlbeat \
  $@
