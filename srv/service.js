const cds = require('@sap/cds');

module.exports = async function() {
    const { Users, Properties } = this.entities;

    this.before('CREATE', Users, (req) => {
        if (!req.data.Email.includes('@')) req.reject(400, 'Ungültige E-Mail-Adresse');
    });

    this.on('READ', Properties, async (req) => {
        return [{ ID: 9999, Type: 'Test-Villa', ConstructionYear: 2024, Owner_ID: 1 }];
    });
};
