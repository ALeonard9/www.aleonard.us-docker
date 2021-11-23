# www.aleonard.us-docker

Rearchitecting infrastructure build to use Docker

## Updating

### Changes to source

1. Make changes locally
2. Commit to Github
3. Send to S3 (oas command)

### Changes to infra

1. Make changes locally
2. Change to orion directory
3. docker build --target dev -t aleonard9/orion-web:dev .
4. ecrpushall
5. Commit to Github
