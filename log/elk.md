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

### Query DSL:
    Use query clauses in query context for conditions which should affect the score of matching documents (i.e. how well does the document match), and use all other query clauses in filter context.

    Match All Query:    { "match_all": {} }, { "match_all": {"boost": 1.2 }}
    Full text queries: 
        Match Query:    
            { "match": { "message": "this is a test" }}
            { "match": { 
                "message": { 
                    "query": "this is a test", 
                    "operator": "and" 
                    }
                }
            }
            { "match_phrase" : { 
                "message" : { 
                    "query" : "this is a test", 
                    "analyzer" : "my_analyzer" 
                    }
                }
            }
            { "match_phrase_prefix" : { "message" : "quick brown f" }}
        Multi Match Query:
            { "multi_match" : { 
                    "query":    "this is a test", 
                    "fields": [ "subject", "message" ] 
                }
            }
            { "multi_match" : {
                    "query":    "Will Smith",
                    "fields": [ "title", "*_name" ] 
                }
            }
            {
                "multi_match" : {
                    "query" : "this is a test",
                    "fields" : [ "subject^3", "message" ] 
                  }
            }


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
