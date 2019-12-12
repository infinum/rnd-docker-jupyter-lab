# R&D Jupyter Lab template

## Requirements

* Docker
* docker-compose

## Usage

1. In the `.env` file put environment variables in format:
    ```
    VARIABLE_NAME=value
    ```
2. In the `requirements.txt` file define Python requirements.
3. Run commands:
    ```bash
    docker-compose build
    docker-compose up
    ```

If you want to use different Python version, edit first line in the Dockerfile. You can find list of available Python Docker images here:w