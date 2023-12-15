//rajithaw
"use strict";
const cds = require('@sap/cds')


var result;
module.exports = srv => {

    srv.on('GetUuid', async req => {
        try {

            result = await onExecuteGetUuid();
            return result;
        } catch (error) {

            return error.message;
        }
    });

}

var onExecuteGetUuid = async function () {

    try {
		// var oConnection = $.hdb.getConnection();

		// var oGetUuid = oConnection.loadProcedure(
		// 	"create_uuid");

		// var aResults = oGetUuid();

            //+rajithaw
            var dbQuery = ' Call "create_uuid"( )'
            var aResults = await cds.run(dbQuery)
            //+rajithaw    


		var oOutput = {
			Uuid: aResults.EV_UUID
		};

		return oOutput;

	} catch (oErrorMessage) {
		throw oErrorMessage;
	}

}