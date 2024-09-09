# API Service

| Category     | SLI                                                | SLO                                                                                                         |
|--------------|----------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Availability | Total successful requests / Total requests >= 0.99 | 99%                                                                                                         |
| Latency      | 90th Percentile latency over a 5 min period        | 90% of requests below 100ms                                                                                 |
| Error Budget | Total error requests / Total requests in budget    | Error budget is defined at 20%. This means that 20% of the requests can fail and still be within the budget |
| Throughput   | Total number of requests >= 300 over 1 minute      | 5 RPS indicates the application is functioning                                                              |
                                                            |