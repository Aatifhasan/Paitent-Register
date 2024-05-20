**"# Paitent-Register"**

**Libraries/Frameworks Used**
* Express.js: Express.js is used as the web application framework for Node.js. It simplifies the process of creating robust APIs and handling HTTP requests/responses efficiently.

* Sequelize: Sequelize is an ORM (Object-Relational Mapping) for Node.js, which provides an easy-to-use interface for interacting with databases. It is used here to define database models, perform database operations, and manage database migrations.

* Multer: Multer is a middleware for handling file uploads in Node.js. It is used to upload patient photos securely and efficiently.

* dotenv: The dotenv library is used to load environment variables from a .env file into Node.js applications. It is used here to securely manage sensitive information such as database credentials.



**Usage**

* Patient Registration: Use the /api/register endpoint to register new patients. Include patient details in the request body and upload a photo.

* Fetch Psychiatrists by Hospital: Use the /api/psychiatrists/:hospitalId endpoint to retrieve information about psychiatrists associated with a specific hospital.

**Link to Postman Collection**

https://www.postman.com/security-specialist-87414207/workspace/hospital/collection/26664672-f9a8883e-9aca-4588-ba03-e2f7d1fce72a 

**ENV**

Create a .env file in the root directory and add the following environment variables:

DB_NAME=database-name

DB_USER=database-username

DB_PASSWORD=database-password

DB_HOST=database-host

DB_DIALECT=database-dialect
