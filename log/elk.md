Elasticsearch vs Database
=============================
    index(indice)       ==> db
    type                ==> table/collection
    id                  ==> record/document
    field               ==> column

    shards              ==> partitions
    replicas            ==> failover

### API:
    _cat
    _plugin

    _mget
    _bulk
    _reindex
    _mtermvectors

    _create
    _update
    _search     
        size
        from
        sort
            order:      asc, desc
            mode:       min, max, avg, sum, median
            missing:    _first, _last
        query
            match_all
            match
            match_phrase
            bool
                should
                must
                must_not
                filter
                    range
        aggs
        _source: false, include/exclude, [field1, field2...]
        fields:  [field1, field2...]

Elastalert
====================

### Rule (type: )
    any:
    blacklist:      compare_key blacklist
    whitelist:      compare_key whitelist ignore_null(true|false)
    new_item:       fields
    change:         compare_key query_key ignore_null(true|false)
    frequency:      num_events timeframe
    flatline:       threshold timeframe
    spike:          spike_height spike_type(up|down|both) timeframe
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
