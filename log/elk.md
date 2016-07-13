Elasticsearch vs Database
=============================
    index      ==> db
    type       ==> table/collection
    id         ==> record/document

    field      ==> column
    item       ==> value

    shards     ==> partitions
    replicas   ==> failover

Elastalert
====================

### Rule (type: )
    any:
    blacklist:      compare_key blacklist
    whitelist:      compare_key whitelist ignore_null(true|false)
    change:         compare_key query_key ignore_null(true|false)
    frequency:      num_events timeframe
    flatline:       threshold timeframe
    spike:          spike_height spike_type(up|down|both) timeframe
    new_item:       fields
    cardinality:    cardinality_field min_cardinality|max_cardinality
                    timeframe

### Filter (filter: )
    - not|and|or  
        - query:        ->query_string:  ->query:
        - term:         ->field: value
        - terms:        ->field: [value1, value2...]
        - wildcard:     ->field: "str1*str2"
        - range:        ->status_code:  ->from:

    ### loading filter directyly from kibana 3
    download_dashboard: "My Dashboard Name"
