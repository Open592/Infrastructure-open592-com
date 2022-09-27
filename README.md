# Terraform infrastructure for open592.com

## Note

This repository contains terraform infrastructure specifically created to
operate open592.com

Unlike [Infrastructure-AWS](https://github.com/Open592/Infrastructure-AWS) this
repository is not intented to be used by anyone else.

## Services

The following services are represented by the infrastructure within this repo:

### Domain

open592.com is hosted on Amazon Route53

The root domain zone is set up within this repository and the hosted zone ID
is piped into [Infrastructure-AWS](https://github.com/Open592/Infrastructure-AWS)

### Email

I host my email for the project with [Proton Mail](https://proton.me/)

The DNS settings required for running this can be found [here](/)
