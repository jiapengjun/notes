Elasticsearch vs Database
=============================
    index      ==> db
    type       ==> table/collection
    id         ==> record/document

    field      ==> column
    item       ==> value

Elastalert
====================

*** Rules (type: )
    any:
    blacklist:      compare_key blacklist
    whitelist:      compare_key whitelist ignore_null(true|false)
    change:         compare_key query_key ignore_null(true|false)
    frequency:      num_events timeframe
    spike:          spike_height spike_type(up|down|both) timeframe
    flatline:       threshold timeframe
    new_item:       fields
    cardinality:    cardinality_field min_cardinality|max_cardinality
                    timeframe
