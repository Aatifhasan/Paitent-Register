const express = require('express');
const router = express.Router();
const { registerPatient, getPsychiatristsByHospital } = require('./controller');
const multer = require('multer');

// New patient registration route
// router.post('/register', registerPatient);

// Multer configuration for handling file uploads
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './uploads'); // Specify the directory for storing uploaded files
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname); // Use a unique filename for each uploaded file
    }
});
const upload = multer({ storage: storage });

// New patient registration route with photo upload
router.post('/register', upload.single('photo'), registerPatient);




// Fetch psychiatrists and patient details for a hospital
router.get('/psychiatrists/:hospitalId', getPsychiatristsByHospital);

module.exports = router;
