# weclouds-localdevelopment

Setting up the local development environment in a consisten and uniform way

# Overview

- Will do docker-based installations for
  - mariadb
  - postgres
  - S3
  - mailhog

# Latest version

- latest version is kept in "main" branch
- Maybe there will be release-branches for supporting "older" setups
- As a rule of thumb we want to stay as close to "latest" for all relevant infrastructure-projects

# How to set up local development

- cd to /local-development
- "docker-compose up"
- See docker-compose docs for how to restart / reset local dev

# local-development: using aws cli

- We are using AWS CLI to connect to S3 and other services and to check/test stuff
- We try to stay as close to the latest version as possible
- Changelog and latest version: https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst

# local-development: how to access S3

- We are using localstack (Docker latest)
- This is run by a localstack image installed via docker-compose
- Use configuration access=test; secret=test; region=us-east-1 (e.g. 'aws configure')
- Note: for uploading --> credentials do not matter; for downloading they do (localstack uses
  presigned urls with the keys test/test)
- for access use aws cli, e.g. 'aws s3 --endpoint=http://localhost:4566 ls' or
  open http://localhost:4566/weclouds-uploaded in a web-browser
- List content of bucket: 'aws s3 --endpoint=http://localhost:4566 ls s3://weclouds-uploaded'
- Sync a temp folder with bucket: 'aws s3 --endpoint=http://localhost:4566 sync . s3:
  //weclouds-uploaded'

## local-development: how to access MariaDB

- We are using MariaDB (Docker latest)
- The database is pre-populated with ~100 data rows
- jdbc:mariadb://localhost:3306/weclouds
- User: weclouds; Pw: weclouds; database: weclouds; root-user: weclouds

## local-development: how to access email (mailhog)

- https://medium.com/@elitcenkalp/install-mailhog-with-docker-compose-2f5668848c0b
- localhost:8025 for web-gui of mailhog

## local-development: how to setup GitHub access

- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Git

- Locally: We try to stay as close to the latest version as possible
- MacOS: install with brew: 'brew upgrade', 'brew install git'

# Idea / IntelliJ

- We try to stay as close as possible to the latest version

# Maven

- We are using Maven. See pom.xml for current version (modules/repos should not but may vary)
- Inside IntelliJ, you may set up maven to use the locally installed version
- Like this we have the same "external" configuration (as run in CI oder in Shell, as in IntelliJ)
- settings.xml can be found under maven-settings in this repo. Follow the comment in this file
- Any adoptions to settings.xml which are relevant for eveybody -> commit under maven-settings

# Developing internal shared libs / Working with shared libs

- Internally developed shared libs are share via our GitHub-Maven-Repository
- This repo needs to be present in settings.xml (see section Maven)
- In GitHub our shared-libs can be found under "packages". We use GitHub-actions to deploy
- Shared-libs can be used as SNAPSHOT-versions. No SNAPSHOT-version dependencies are allowed in
  production code
- Shared libs are release when they are production-ready via release-branches. Do not forget to tag
  releases with a git tag.

# Java JDK

- We are using Java. See pom.xml for current version.
- We are using Amazon Correto Distribution for local development within IntelliJ and running in the
  containers
- https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html
- Before developing locally, make sure you have downloaded and installed the latest JDK from within
  IntelliJ
- Also see: https://www.jetbrains.com/help/idea/sdk.html#jdk

