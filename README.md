# Simple Practice Test Project

This project is a Ruby-based application, containerized using Docker for ease of development and deployment.

## Files Overview

- **calendar_page.rb**: Manages calendar-related functionalities.
- **create_client_page.rb**: Handles client creation workflows.
- **login_page.rb**: Manages user authentication.
- **navigation.rb**: Controls the application's navigation logic.
- **sending_intakes_form_page.rb**: Manages the form submission process.
- **top_nav_bar.rb**: Implements the top navigation bar.
- **env.rb**: Sets up environment-specific configurations.
- **adding_client.feature**: Defines test scenarios for adding a client.
- **secrets.yaml**: Stores environment-specific secrets and credentials.
- **clients_factory.rb**: Contains factory methods for creating client instances.

## Getting Started

### Prerequisites

- Docker

### Build and Run

1. **Clone the repository:**
   ```sh
  git clone https://github.com/ilonaHK/simplepractice_test.git
  cd simplepractice_test
   
2. **Build, shut down, rebuild start the containers an see logs:**
```sh
 docker build -t simplepractice_test .
 docker run -p 4567:4567 simplepractice_test
 docker stop $(docker ps -q --filter ancestor=simplepractice_test)
 docker logs $(docker ps -q --filter ancestor=simplepractice_test)
```

### Environment Variables
Ensure the secrets.yaml file contains the appropriate credentials for your environment.

### Notes

1.Ensure your Gemfile and Gemfile.lock are correctly set up with the necessary dependencies.
2.Update the CMD in the Dockerfile to the correct entry point for your application.
3.For more information, refer to the official [Docker Documentation](Docker).


