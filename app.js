const express = require('express');
const bodyParser = require('body-parser');
const routes = require('./routes');
const multer = require('multer'); // Import multer

const app = express();
app.use(bodyParser.json());

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './uploads'); // Specify the directory for storing uploaded files
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '-' + file.originalname); // Use a unique filename for each uploaded file
  }
});
const upload = multer({ storage: storage });

app.use('/api', routes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
