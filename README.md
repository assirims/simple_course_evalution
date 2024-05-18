# Simple Lectures Evaluation Platform

The **Lectures Evaluation Platform** is a web application designed to enhance the quality of education by providing a streamlined process for students to register and submit feedback about their lectures. This platform enables students to share their opinions and experiences, which can be used by educators and administrators to improve teaching methods and course content.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Deployment](#deployment)
5. [Built With](#built-with)
6. [Contributing](#contributing)
7. [Authors](#authors)
8. [License](#license)


## Getting Started

These instructions will help you set up a copy of the Lectures Evaluation Platform project on your local machine for development and testing purposes.

### Prerequisites

List of software and tools needed before you can install the project.

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://rubyonrails.org/)
- [Database (i.e., PostgreSQL)](https://www.postgresql.org/)

### Installation

Step-by-step series of examples that tell you how to get a development environment running.

1. Clone the repository:
   ```sh
   git clone https://github.com/assirims/simple_course_evalution.git
   cd simple_course_evalution
   ```

2. Install the dependencies and set up the database:
   ```sh
   bin/setup
   ```

3. Run the server:
   ```sh
   rails server
   ```

4. Open your browser:

    Navigate to http://localhost:3000 to see the application in action.


## Deployment

Notes about how to deploy this on a live system.

For example, if using Heroku:
1. Install the Heroku CLI.
2. Log in to Heroku and create an application.
   ```sh
   heroku login
   heroku create your-app-name
   ```
3. Deploy the application:
   ```sh
   git push heroku main
   ```
4. Run migrations:
   ```sh
   heroku run rails db:migrate
   ```

## Built With

- [Ruby on Rails](https://rubyonrails.org/) - The web framework used
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) - Frontend framework for responsive design

---

Feel free to adjust and expand this section to include all the technologies used in your Lectures Evaluation Platform project.
## Contributing

Guidelines for how to contribute to the project.

1. Fork the repository.
2. Create a feature branch:
   ```sh
   git checkout -b my-new-feature
   ```
3. Commit your changes:
   ```sh
   git commit -m 'Add some feature'
   ```
4. Push to the branch:
   ```sh
   git push origin my-new-feature
   ```
5. Create a new Pull Request.


## Authors

- **Mohammed Assiri** - [assirims](https://github.com/assirims)


## License

This project is licensed under the MIT License.