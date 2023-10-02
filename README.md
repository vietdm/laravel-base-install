## Laravel Base Project

The **Laravel Base Project** is a starter template designed to simplify the process of setting up a new Laravel project with a Docker development environment. With just a few simple steps, you can create a new Laravel project, configure the necessary settings in the `config.txt.tmp` file, and set up the Docker environment to get your development environment up and running quickly.

### Features

- **Laravel**: The latest version of Laravel is automatically installed.
- **Docker Environment**: A Docker-based development environment is included, allowing you to develop and test your Laravel application in a containerized setup.
- **Easy Setup**: A straightforward setup process that involves configuring your project settings in `config.txt.tmp` and running `cp config.txt.tmp config.txt` to create the `config.txt` file. After that, run `sh init.sh` to initialize your Laravel project and set up the Docker environment.
- **Customizable**: Customize your Laravel project's settings and Docker configurations as needed.
- **Start Developing**: Get started with your Laravel project development without the hassle of manual setup.

### Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/vietdm/base_laravel.git
    ```

2. Rename ```base_laravel``` to the project name you desire:

    ```bash
    cp -r base_laravel new_name
    ```
   
3. Navigate to the project directory:

    ```bash
    cd new_name
    ```

4. Create the `config.txt` file by running:

    ```bash
    cp config.txt.tmp config.txt
    ```

5. You can install a lower version of Laravel by changing ```COMMAND_INIT_LARAVEL``` in ```config.txt```. By default, it installs the latest version.


6. Run the initialization script to create your Laravel project and configure Docker:

    ```bash
    sh init.sh
    ```

7. Start developing your Laravel application!

   ```bash
    docker-compose up -d
    ```

For more details and customization options, please refer to the project documentation.

### Prerequisites

- [Docker](https://www.docker.com/get-started) must be installed on your system.

### License

This project is licensed under the [MIT License](https://opensource.org/license/mit/).

### Author

- Minh Việt (VietD)
- GitHub: [https://github.com/vietdm](https://github.com/vietdm)
