[![docker_build_push_acr](https://github.com/gregyjames/MinimalAzureGoAPI/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/gregyjames/MinimalAzureGoAPI/actions/workflows/deploy.yml) [![Go](https://github.com/gregyjames/MinimalAzureGoAPI/actions/workflows/go.yml/badge.svg)](https://github.com/gregyjames/MinimalAzureGoAPI/actions/workflows/go.yml)

# MinimalAzureGoAPI 🚀
This project is a minimal template repository intended to be a starting point when developing API applications in Go. It speeds up the process by simplifying some of the trivial tasks involved such as writing Dockerfiles or setting up Github Actions from scratch. 

## Getting Started
Add the following repository secrets from the Access Keys section of your Azure Container Repo to your repository secrets: 
| Name | Description  |
|--|--|
| REGISTRY_LOGIN_SERVER | Registry name in all lowercase. |
| REGISTRY_USERNAME||
| REGISTRY_PASSWORD | |
| REGISTRY_NAME | The name of the registry to push to.|

## Features

 1. Deploy, Build and Dependabot actions preconfigured.
 2. Minimum Fiber API with compression already configured.
 3. Tiny Docker container built using scratch image and UPX compression with a size of approximately 2MB. 

## Contribute
1.  Add a  [GitHub Star](https://github.com/gregyjames/MinimalAzureGoAPI/stargazers)  to the project.
2.  Open a pull request with any suggested changes.

## License
Copyright (c) 2023-present [gregyjames](https://github.com/gregyjames) and [Contributors](https://github.com/gregyjames/MinimalAzureGoAPI/graphs/contributors). `MinimalAzureGoAPI` is free and open-source software licensed under the [MIT License](https://github.com/gregyjames/MinimalAzureGoAPI/blob/master/LICENSE).