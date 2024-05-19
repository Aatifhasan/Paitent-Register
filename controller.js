const Patient = require('./models/patient');

// Controller function for new patient registration
// const registerPatient = async (req, res) => {
//     try {
//         // Form patient object
//         const patientData = {
//             name: req.body.name,
//             address: req.body.address,
//             email: req.body.email,
//             phone: req.body.phone,
//             password: req.body.password,
//             photo: req.body.photo
//         };
//         try {
//             // Create a new patient record in the database
//             const patient = await Patient.create(patientData);
//             res.status(201).json({ message: 'Patient registered successfully', patient });
//         } catch (error) {
//             console.log(error)
//             res.status(500).json({ error: 'Failed to register patient' });
//         }
//     } catch (error) {
//         // Handle other errors

//         res.status(500).json({ error: 'Internal server error' });
//     }
// };

const registerPatient = async (req, res) => {
    try {
      // Form patient object
      const { name, address, email, phone, password } = req.body;
      const photo = req.file.filename; // Get the filename of the uploaded photo
  
      // Create a new patient record in the database
      const patient = await Patient.create({
        name,
        address,
        email,
        phone,
        password, // Save the password directly
        photo // Save the filename in the database
      });
  
      res.status(201).json({ message: 'Patient registered successfully', patient });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Failed to register patient' });
    }
  };

// Controller function to fetch psychiatrists and patient details for a hospital
const getPsychiatristsByHospital = async (req, res) => {
    try {
        // Fetch psychiatrists and patient details from the database based on hospitalId
        // Return response
    } catch (error) {
        // Handle error
        res.status(500).json({ error: 'Internal server error' });
    }
};

module.exports = {
    registerPatient,
    getPsychiatristsByHospital
};