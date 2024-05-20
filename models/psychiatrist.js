const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Hospital = require('./hospital');

const Psychiatrist = sequelize.define('Psychiatrist', {
    name: DataTypes.STRING
});

Psychiatrist.belongsTo(Hospital);
Hospital.hasMany(Psychiatrist);

module.exports = Psychiatrist;