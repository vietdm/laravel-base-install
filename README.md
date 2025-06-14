## Install Laravel With Docker

The **Laravel Base Install** is a starter template designed to simplify the process of setting up a new Laravel project with a Docker development environment. With just a few simple steps, you can create a new Laravel project, configure the necessary settings in the `.env-init.example` file, and set up the Docker environment to get your development environment up and running quickly.

### Features

- **Laravel**: The latest version of Laravel is automatically installed.
- **Docker Environment**: A Docker-based development environment is included, allowing you to develop and test your Laravel application in a containerized setup.
- **Easy Setup**: A straightforward setup process that involves configuring your project settings in `.env-init.example` and running `cp .env-init.example .env-init` to create the `.env-init` file. After that, run `sh init.sh` to initialize your Laravel project and set up the Docker environment.
- **Customizable**: Customize your Laravel project's settings and Docker configurations as needed.
- **Start Developing**: Get started with your Laravel project development without the hassle of manual setup.

### Usage

1. Clone this repository to your local machine and rename ```laravel-base-install``` to the project name you desire:

    ```bash
    git clone https://github.com/vietdm/laravel-base-install.git new_name
    ```

2. Navigate to the project directory:

    ```bash
    cd new_name
    ```

3. Create the `.env-init` file by running:

    ```bash
    cp .env-init.example .env-init
    ```

4. You can install a lower version of Laravel by changing ```COMMAND_INIT_LARAVEL``` in ```.env-init```. By default, it installs the latest version.


5. Run the initialization script to create your Laravel project and configure Docker:

    ```bash
    sh init.sh
    ```

6. Start developing your Laravel application!

   ```bash
    docker-compose up -d
    ```

For more details and customization options, please refer to the project documentation.

### Prerequisites

- [Docker](https://www.docker.com/get-started) must be installed on your system. If you use Linux, you can use ```install-docker.sh``` to install Docker.

### License

This project is licensed under the [MIT License](https://opensource.org/license/mit/).

### Author

- Minh Việt (VietD)
- GitHub: [https://github.com/vietdm](https://github.com/vietdm)
