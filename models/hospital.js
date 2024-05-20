const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Hospital = sequelize.define('Hospital', {
    name: DataTypes.STRING
});

module.exports = Hospital;