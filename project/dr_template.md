# Infrastructure

## AWS Zones
Identify your zones here
us-east-2a, us-west-1b

## Servers and Clusters

### Table 1.1 Summary
| Asset        | Purpose                      | Size      | Qty | DR         |
|--------------|------------------------------|-----------|-----|------------|
| EC2 Instance | For deploying application    | t3.micro  | 3   | DR         |
| EKS          | For hosting monitoring tools | t3.medium | 2   | DR         |
| ALB          | For Grafana DNS              |           | 1   | DR         |
| RDS          | For replication              | t2.small  | 2   | Replicated |


### Descriptions
More detailed descriptions of each asset identified above.

EC2 Instances: The EC2 Instance is used to host the web application. To collect metrics to Prometheus, node exporter will be installed inside instances
EKS: Prometheus and Grafana will be deployed in this Kubernetes Cluster.
ALB: Grafana will be accessed through the DNS of the internet-facing load balancer.
RDS: The RDS will responsible for demonstrating data replication between regions.

## DR Plan
### Pre-Steps:
List steps you would perform to setup the infrastructure in the other region. It doesn't have to be super detailed, but high-level should suffice.

Make sure the both regions will be similar in the configuration.
The infrastructure in each region will be deployed with Terraform.

## Steps:
You won't actually perform these steps, but write out what you would do to "fail-over" your application and database cluster to the other region. Think about all the pieces that were setup and how you would use those in the other region

Point the DNS to the other region mentioned above
  This can be done with Amazon route 53
Failover the database replication instances to another region
  Health checks the database and setup automatically fail-over for the database