# Inception

Inception is a project that uses Shell, Dockerfile, and Makefile for its configuration and execution.

## Description

This project aims to provide an automated development and deployment environment using Docker. The project's structure comprises Shell scripts, Dockerfile, and Makefile to facilitate the setup and deployment of the environment.

## Project Structure

- **Shell (46.9%)**: Automation and configuration scripts.
- **Dockerfile (38.6%)**: Files for creating Docker images.
- **Makefile (14.5%)**: Files for orchestrating tasks.

## Requirements

- Docker
- Make

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/AdriaPriego/inception.git
   cd inception
   ```

2. Build the Docker images:
   ```bash
   make build
   ```

3. Start the containers:
   ```bash
   make up
   ```

## Container Setup

To launch an application, you need to set up the following containers and resources:

1. **Docker container with NGINX**:
   - This container should contain NGINX configured to use only TLSv1.2 or TLSv1.3.
   - NGINX will act as the web server and reverse proxy for your application.

2. **Docker container with WordPress + php-fpm**:
   - This container should contain WordPress and php-fpm installed and configured.
   - It should not include NGINX, as the web server is managed in the first container.

3. **Docker container with MariaDB**:
   - This container should contain only MariaDB, the database for your application.
   - It should not include NGINX.

4. **Volume for the WordPress database**:
   - You need a Docker volume to store the WordPress database data.
   - This ensures that the data persists even if the container is restarted or removed.

5. **Volume for the WordPress website files**:
   - You need a second Docker volume to store the files of your WordPress website.
   - This includes themes, plugins, and other content files.

6. **Docker network for container communication**:
   - You need a custom Docker network to allow communication between your containers.

## Usage

Describe here how to use your project. Provide examples of commands and possible use cases.

## Contribution

If you want to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make your changes and commit them (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
