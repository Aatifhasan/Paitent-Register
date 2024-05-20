const express = require('express');
const router = express.Router();
const { registerPatient, getPsychiatristsByHospital } = require('./controller');
const multer = require('multer');


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './uploads');
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname);
    }
});
const upload = multer({ storage: storage });

// New patient registration route with photo upload
router.post('/register', upload.single('photo'), registerPatient);




// Fetch psychiatrists and patient details for a hospital
router.get('/psychiatrists/:hospitalId', getPsychiatristsByHospital);

module.exports = router;
