//requirement- postgresql ver 10+
//docs - https://www.postgresql.org/docs/10/ddl-partitioning.html

CREATE TABLE measurement_partition (LIKE measurement INCLUDING DEFAULTS INCLUDING CONSTRAINTS);

CREATE TABLE measurement_1219 PARTITION OF measurement_partition
    FOR VALUES FROM ('2019-12-01') TO ('2020-01-01');