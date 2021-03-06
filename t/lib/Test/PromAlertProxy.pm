package Test::PromAlertProxy;

use warnings;
use strict;

sub now { 1558324375 };

sub prom_alert {
  return {
    startsAt => "2019-05-20T03:52:55Z",
    endsAt   => "2019-05-20T03:55:55Z",
    generatorURL => "https://prometheus.internal/graph?g0.expr=up%7Bjob%3D%22prom_node_exporter%22%7D+%3D%3D+0&g0.tab=1",
    annotations => {
      description => "No response from node_exporter on monitor2 for more than 30s",
      summary     => "Host monitor2 down"
    },
    labels => {
      alertname => "node_exporter",
      dc        => "nyi",
      instance  => "10.202.2.231:9100",
      job       => "prom_node_exporter",
      node      => "monitor2",
      severity  => "critical"
    },
  };
}

sub vo_alert {
  return {
    message_type           => "CRITICAL",
    entity_id              => "51643560a4093dbd754ed3a16b136752dc5af49fca7cf3814b040e734f5bb6b1",
    entity_display_name    => "Host monitor2 down",
    state_message          => "No response from node_exporter on monitor2 for more than 30s",
    state_start_time       => 1558324375,
    "prometheus.alertname" => "node_exporter",
    "prometheus.dc"        => "nyi",
    "prometheus.instance"  => "10.202.2.231:9100",
    "prometheus.job"       => "prom_node_exporter",
    "prometheus.node"      => "monitor2",
    "prometheus.severity"  => "critical",
  };
}
  
1;
