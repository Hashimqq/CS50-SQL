# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Randomly distribute observations to boats regardless of collection time. Offers even distribution but may require querying all boats for complete data.

## Partitioning by Hour

Assign time-based partitions to boats (e.g., Boat A handles midnight to 7:59 AM). Simple queries but may lead to uneven data distribution.

## Partitioning by Hash Value

Assign boats based on hash of observation timestamps. Provides balanced distribution and query efficiency but relies on hash function quality.
