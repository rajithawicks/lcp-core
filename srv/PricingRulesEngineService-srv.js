const cds = require('@sap/cds');

var result, val1;
module.exports = srv => {

    //for PricingRuleSet
    //****************************** */

    srv.on('CREATE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('DELETE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await CompetitorLocationSet_onBeforeDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    //for AccessSequenceSet
    //********************************* */

    srv.on('CREATE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('DELETE', 'AccessSequenceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await AccessSequenceSet_onBeforeDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    // for  EventRuleConditionSet
    //******************************** */
    srv.on('CREATE', 'EventRuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleConditionSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'EventRuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleConditionSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'EventRuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleConditionSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'EventRuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleConditionSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'EventRuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleConditionSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    // for  EventRuleDimensionSet
    //******************************** */
    srv.on('CREATE', 'EventRuleDimensionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleDimensionSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'EventRuleDimensionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleDimensionSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'EventRuleDimensionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleDimensionSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'EventRuleDimensionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleDimensionSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'EventRuleDimensionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await EventRuleDimensionSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    //for RuleConditionSet
    //****************************** */

    srv.on('CREATE', 'RuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'RuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'RuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'RuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'RuleConditionSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('DELETE', 'PricingRuleSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await RuleConditionSet_onBeforeDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });


    //for MessageTypeMaintenanceSet
    //****************************** */

    srv.on('CREATE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('CREATE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onBeforeCreate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('UPDATE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('UPDATE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onBeforeUpdate(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.on('DELETE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

    srv.before('DELETE', 'MessageTypeMaintenanceSet', async (req, res) => {
        try {
            //const { LocationId } = req.data;

            result = await MessageTypeMaintenanceSet_onBeforeDelete(req);
            return result;
        } catch (error) {

            return error.message;
        }
    });

}



var CompetitorLocationSet_onCreate = async function (req) {

    // var oConnection = $.hdb.getConnection();
    //var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.afterTableName);


    try {
        // var oCreateRulesHierarchy = oConnection.loadProcedure(
        // 	"create_rules_hierarchy");

        // var aResults = oCreateRulesHierarchy(Priority, RuleId);

        //+rajithaw
        const { Priority, RuleId } = req.data;
        var dbQuery = ' Call "create_rules_hierarchy"( )'
        var aResults = await cds.run(dbQuery, { Priority, RuleId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }

}

var CompetitorLocationSet_onBeforeCreate = async function (req) {

    var oValidationRule = {
        "00": [{
            "RuleId": {
                DefaultValue: ""
            }
        }, {
            "Priority": {
                DefaultValue: ""
            }
        }]
    };

    var aEntityUpdateRule = [{
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "RuleTypeId": {
            DefaultValue: ""
        }
    }, {
        "RuleType": {
            DefaultValue: ""
        }
    }, {
        "MessageNumber": {
            DefaultValue: ""
        }
    }, {
        "Priority": true
    }];

    //commented until its figured out
    //return CoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);
}

var CompetitorLocationSet_onUpdate = async function (req) {

    //var oConnection = $.hdb.getConnection();

    // commented until vesta is figured out
    //var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateRulesHierarchy = oConnection.loadProcedure(
        // 	"update_rules_hierarchy");

        // var aResults = oUpdateRulesHierarchy(oEntityData.Priority, oEntityData.RuleId);

        //+rajithaw
        const { Priority, RuleId } = req.data;
        var dbQuery = ' Call "update_rules_hierarchy"( )'
        var aResults = await cds.run(dbQuery, { Priority, RuleId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var CompetitorLocationSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {
        "00": [{
            "RuleId": {
                DefaultValue: ""
            }
        }, {
            "Priority": {
                DefaultValue: ""
            }
        }]
    };

    var aEntityUpdateRule = [{
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "RuleTypeId": {
            DefaultValue: ""
        }
    }, {
        "RuleType": {
            DefaultValue: ""
        }
    }, {
        "MessageNumber": {
            DefaultValue: ""
        }
    }, {
        "Priority": true
    }];

    //commented till vesta is figured
    // return CoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);
}


var CompetitorLocationSet_onDelete = async function (req) {
    // var oConnection = $.hdb.getConnection();
    //deleted untill vesta is figured out
    //var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {

        // var oDeleteRulesHierarchy = oConnection.loadProcedure(
        // 	"delete_rules_hierarchy");

        // var aResults = oDeleteRulesHierarchy(oEntityData.RuleId);

        //+rajithaw
        const { RuleId } = req.data;
        var dbQuery = ' Call "delete_rules_hierarchy"( )'
        var aResults = await cds.run(dbQuery, { RuleId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var CompetitorLocationSet_onBeforeDelete = async function (req) {
    var oValidationRule = {
        "00": [{
            "RuleId": [{
                MandatoryCheck: true
            }]
        }]
    };

    // commented untill vesta is figured out
    //return CoreUtility.executeBeforeDeleteProcess(oValidationRule, null, oParam);
}

var AccessSequenceSet_onCreate = async function (req) {

    // vesta commented till its figured
    // var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.afterTableName);
    // var oConnection = $.hdb.getConnection();

    try {
        // var oCreateAccessSequence = oConnection.loadProcedure(
        // 	"create_access_sequence");

        // var aResults = oCreateAccessSequence(oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.DimensionId, oEntityData.Priority);

        //+rajithaw
        const { RuleId, EventTypeId, DimensionId, Priority } = req.data;
        var dbQuery = ' Call "create_access_sequence"( )'
        var aResults = await cds.run(dbQuery, { RuleId, EventTypeId, DimensionId, Priority })
        //+rajithaw

        //oEntityData.AccessSequenceUuid = aResults.EV_ACCESSSEQUENCEUUID;
        //CoreUtility.updateTemporaryTable(oParam.connection, oParam.afterTableName, oEntityData);

    } catch (oError) {
        throw oError;
    }
}

var AccessSequenceSet_onBeforeCreate = async function (req) {

    var oValidationRule = {
        "00": [{
            "RuleId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_RULETEXT",
                    FieldToCheck: "RULEID"
                }
            }, {
                NonExistenceCheck: {
                    CheckTable: "PR_ACCESSSEQUENCE",
                    FieldToCheck: [{
                        FieldName: "RULEID",
                        PropertyName: "RuleId"
                    }, {
                        FieldName: "DIMENSIONID",
                        PropertyName: "DimensionId"
                    }]
                }
            }]
        }, {
            "EventTypeId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_EVENTTYPETEXT",
                    FieldToCheck: "EVENTTYPEID"
                }
            }]
        }, {
            "DimensionId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_DIMENSIONTEXT",
                    FieldToCheck: "DIMENSIONID"
                }
            }]
        }, {
            "Priority": [{
                MandatoryCheck: true
            }, {
                NonExistenceCheck: {
                    CheckTable: "PR_ACCESSSEQUENCE",
                    FieldToCheck: [{
                        FieldName: "RULEID",
                        PropertyName: "RuleId"
                    }, {
                        FieldName: "PRIORITY",
                        DataType: $.db.types.INT,
                        PropertyName: "Priority"
                    }]
                }
            }]
        }]
    };

    var aEntityUpdateRule = [{
        "AccessSequenceUuid": {
            DefaultValue: ""
        }
    }, {
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            DefaultValue: ""
        }
    }];
    // commented untill vesta is figure out
    //return CoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);

}

var AccessSequenceSet_onUpdate = async function (req) {

    //commented till vesta is figured out
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateAccessSequence = oConnection.loadProcedure(
        // 	"update_access_sequence");

        // var aResults = oUpdateAccessSequence(oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.DimensionId, oEntityData.Priority,
        // 	oEntityData.AccessSequenceUuid);

        //+rajithaw
        const { RuleId, EventTypeId, DimensionId, Priority, AccessSequenceUuid } = req.data;
        var dbQuery = ' Call "update_access_sequence"( )'
        var aResults = await cds.run(dbQuery, { RuleId, EventTypeId, DimensionId, Priority, AccessSequenceUuid })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var AccessSequenceSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {
        "00": [{
            "AccessSequenceUuid": [{
                MandatoryCheck: true
            }]
        }]
    };

    var aEntityUpdateRule = [{
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            DefaultValue: ""
        }
    }, {
        "RuleId": {
            DefaultValue: ""
        }
    }, {
        "EventTypeId": {
            DefaultValue: ""
        }
    }, {
        "DimensionId": {
            DefaultValue: ""
        }
    }, {
        "Priority": {
            DefaultValue: ""
        }
    }];
    //vesta is commented untill its figured out
    //return CoreUtility.executeBeforeUpdateProcess(oValidationRule, aEntityUpdateRule, oParam);

}

var AccessSequenceSet_onDelete = async function (req) {

    // var oConnection = $.hdb.getConnection();
    // var oEntityData = CoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {
        // var oDeleteAccessSequence = oConnection.loadProcedure(
        // 	"delete_access_sequence");

        // var aResults = oDeleteAccessSequence(oEntityData.AccessSequenceUuid);

        //+rajithaw
        const { AccessSequenceUuid } = req.data;
        var dbQuery = ' Call "delete_access_sequence"( )'
        var aResults = await cds.run(dbQuery, { AccessSequenceUuid })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;  //CoreUtility.convertError(oError);
    }

}

var AccessSequenceSet_onBeforeDelete = async function (req) {
    var oValidationRule = {
        "00": [{
            "AccessSequenceUuid": [{
                MandatoryCheck: true
            }]
        }]
    };
    //vesta is commented  untill its sorted
    //return CoreUtility.executeBeforeDeleteProcess(oValidationRule, null, oParam);
}

var EventRuleConditionSet_onCreate = async function (req) {
    //vesta commented till its sorted
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);
    // var oConnection = $.hdb.getConnection();

    try {
        // var oEventRuleCondition = oConnection.loadProcedure(
        // 	"create_event_rule_condition");

        // var aResults = oEventRuleCondition(oEntityData.RuleConditionUuid, oEntityData.ConditionFrom, oEntityData.ConditionTo, oEntityData.Value);

        //+rajithaw
        const { RuleConditionUuid, ConditionFrom, ConditionTo, Value } = req.data;
        var dbQuery = ' Call "create_event_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { RuleConditionUuid, ConditionFrom, ConditionTo, Value })
        //+rajithaw


        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

        // oEntityData.EventRuleConditionUuid = aResults.EV_EVENTRULECONDITIONUUID;
        // oCoreUtility.updateTemporaryTable(oParam.connection, oParam.afterTableName, oEntityData);

    } catch (oError) {
        throw oError;
    }
}

var EventRuleConditionSet_onBeforeCreate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "EventRuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "RuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "ConditionFrom": {
            DefaultValue: 0
        }
    }, {
        "ConditionTo": {
            DefaultValue: 0
        }
    }, {
        "Value": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);
}

var EventRuleConditionSet_onUpdate = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateEventRuleCondition = oConnection.loadProcedure(
        // 	"update_event_rule_condition");

        // var aResults = oUpdateEventRuleCondition(oEntityData.EventRuleConditionUuid, oEntityData.RuleConditionUuid, oEntityData.ConditionFrom, oEntityData.ConditionTo, oEntityData.Value);
        //+rajithaw
        const { EventRuleConditionUuid, RuleConditionUuid, ConditionFrom, ConditionTo, Value } = req.data;
        var dbQuery = ' Call "update_event_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { EventRuleConditionUuid, RuleConditionUuid, ConditionFrom, ConditionTo, Value })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var EventRuleConditionSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "EventRuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "RuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "ConditionFrom": {
            DefaultValue: null
        }
    }, {
        "ConditionTo": {
            DefaultValue: null
        }
    }, {
        "Value": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeUpdateProcess(oValidationRule, aEntityUpdateRule, oParam);
}

var EventRuleConditionSet_onDelete = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {

        // var oDeleteEventRulesCondition = oConnection.loadProcedure(
        // 	"delete_event_rule_condition");

        // var aResults = oDeleteEventRulesCondition(oEntityData.EventRuleConditionUuid, oEntityData.RuleConditionUuid);

        //+rajithaw
        const { EventRuleConditionUuid, RuleConditionUuid } = req.data;
        var dbQuery = ' Call "delete_event_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { EventRuleConditionUuid, RuleConditionUuid })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var EventRuleDimensionSet_onCreate = async function (req) {

    //vesta commented till its sorted
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);
    // var oConnection = $.hdb.getConnection();

    try {
        // var oEventRuleDimension = oConnection.loadProcedure(
        // 	"create_event_rule_dimension");

        // var aResults = oEventRuleDimension(oEntityData.RuleConditionUuid, oEntityData.DimensionId, oEntityData.DimensionValue);


        //+rajithaw
        const { RuleConditionUuid, DimensionId, DimensionValue } = req.data;
        var dbQuery = ' Call "create_event_rule_dimension"( )'
        var aResults = await cds.run(dbQuery, { RuleConditionUuid, DimensionId, DimensionValue })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }

}

var EventRuleDimensionSet_onBeforeCreate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "RuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "DimensionId": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            DefaultValue: ""
        }
    }, {
        "DimensionValue": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    // return oCoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);
}

var EventRuleDimensionSet_onUpdate = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateEventRuleDimension = oConnection.loadProcedure(
        // 	"create_event_rule_dimension");

        // var aResults = oUpdateEventRuleDimension(oEntityData.RuleConditionUuid, oEntityData.DimensionId, oEntityData.DimensionValue);

        //+rajithaw
        const { RuleConditionUuid, DimensionId, DimensionValue } = req.data;
        var dbQuery = ' Call "create_event_rule_dimension"( )'
        var aResults = await cds.run(dbQuery, { RuleConditionUuid, DimensionId, DimensionValue })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var EventRuleDimensionSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "RuleConditionUuid": {
            DefaultValue: ""
        }
    }, {
        "DimensionId": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            DefaultValue: ""
        }
    }, {
        "DimensionValue": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeUpdateProcess(oValidationRule, aEntityUpdateRule, oParam);

}

var EventRuleDimensionSet_onDelete = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {

        // var oDeleteEventRulesDimension = oConnection.loadProcedure(
        // 	"delete_event_rule_dimension");

        // var aResults = oDeleteEventRulesDimension(oEntityData.RuleConditionUuid, oEntityData.DimensionId, oEntityData.DimensionValue);

        //+rajithaw
        const { RuleConditionUuid, DimensionId, DimensionValue } = req.data;
        var dbQuery = ' Call "delete_event_rule_dimension"( )'
        var aResults = await cds.run(dbQuery, { RuleConditionUuid, DimensionId, DimensionValue })
        //+rajithaw


        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }

}

var RuleConditionSet_onCreate = async function (req) {

    //vesta commented till its sorted
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);
    // var oConnection = $.hdb.getConnection();

    try {
        // var oRuleCondition = oConnection.loadProcedure(
        // 	"create_rule_condition");

        // var aResults = oRuleCondition(oEntityData.NodeId, oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.SalesOrganizationId, oEntityData.DistributionChannelId, oEntityData.ValidFrom, oEntityData.ValidTo, oEntityData.RoundingProfileId, oEntityData.DimensionId);

        //+rajithaw
        const { NodeId, RuleId, EventTypeId, SalesOrganizationId, DistributionChannelId, ValidFrom, ValidTo, RoundingProfileId, DimensionId } = req.data;
        var dbQuery = ' Call "create_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { NodeId, RuleId, EventTypeId, SalesOrganizationId, DistributionChannelId, ValidFrom, ValidTo, RoundingProfileId, DimensionId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

        //vesta commented till its sorted
        // oCoreUtility.updateTemporaryTable(oParam.connection, oParam.afterTableName, oEntityData);

    } catch (oError) {
        throw oError;
    }
}

var RuleConditionSet_onBeforeCreate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "NodeId": {
            DefaultValue: ""
        }
    }, {
        "RuleId": {
            DefaultValue: ""
        }
    }, {
        "Rule": {
            InitialValue: ""
        }
    }, {
        "EventTypeId": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            InitialValue: ""
        }
    }, {
        "DistributionChannelId": {
            DefaultValue: ""
        }
    }, {
        "SalesOrganization": {
            InitialValue: ""
        }
    }, {
        "DistributionChannel": {
            InitialValue: ""
        }
    }, {
        "ValidFrom": {
            DefaultValue: $.constant.Date.TODAY_DATE
        }
    }, {
        "ValidTo": {
            DefaultValue: $.constant.Date.MAX_DATE
        }
    }, {
        "RoundingProfileId": {
            DefaultValue: ""
        }
    }, {
        "RoundingProfile": {
            InitialValue: 0
        }
    }, {
        "DimensionId": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            InitialValue: ""
        }
    }, {
        "Dimensions": {
            InitialValue: ""
        }
    }, {
        "HasValue": {
            InitialValue: 0
        }
    }, {
        "ConditionFrom": {
            InitialValue: 0
        }
    }, {
        "ConditionTo": {
            InitialValue: 0
        }
    }, {
        "Value": {
            InitialValue: ""
        }
    }, {
        "ParentNodeId": {
            InitialValue: ""
        }
    }, {
        "IsPercentage": {
            DefaultValue: 0
        }
    }, {
        "Level": {
            InitialValue: 0
        }
    }, {
        "DrillDownState": {
            InitialValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);
}

var RuleConditionSet_onUpdate = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateRuleCondition = oConnection.loadProcedure(
        // 	"update_rule_condition");

        // var aResults = oUpdateRuleCondition(oEntityData.NodeId, oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.SalesOrganizationId, oEntityData.DistributionChannelId, oEntityData.ValidFrom, oEntityData.ValidTo, oEntityData.RoundingProfileId, oEntityData.DimensionId);

        //+rajithaw
        const { NodeId, RuleId, EventTypeId, SalesOrganizationId, DistributionChannelId, ValidFrom, ValidTo, RoundingProfileId, DimensionId } = req.data;
        var dbQuery = ' Call "update_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { NodeId, RuleId, EventTypeId, SalesOrganizationId, DistributionChannelId, ValidFrom, ValidTo, RoundingProfileId, DimensionId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }

}

var RuleConditionSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {};

    var aEntityUpdateRule = [{
        "NodeId": {
            DefaultValue: ""
        }
    }, {
        "RuleId": {
            DefaultValue: ""
        }
    }, {
        "Rule": {
            InitialValue: ""
        }
    }, {
        "EventTypeId": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            InitialValue: ""
        }
    }, {
        "SalesOrganizationId": {
            DefaultValue: ""
        }
    }, {
        "SalesOrganization": {
            InitialValue: ""
        }
    }, {
        "DistributionChannelId": {
            DefaultValue: ""
        }
    }, {
        "DistributionChannel": {
            InitialValue: ""
        }
    }, {
        "RoundingProfileId": {
            DefaultValue: ""
        }
    }, {
        "RoundingProfile": {
            InitialValue: 0
        }
    }, {
        "ValidFrom": {
            DefaultValue: $.constant.Date.TODAY_DATE
        }
    }, {
        "ValidTo": {
            DefaultValue: $.constant.Date.MAX_DATE
        }
    }, {
        "DimensionId": {
            DefaultValue: ""
        }
    }, {
        "Dimension": {
            InitialValue: ""
        }
    }, {
        "Dimensions": {
            InitialValue: ""
        }
    }, {
        "HasValue": {
            InitialValue: 0
        }
    }, {
        "ConditionFrom": {
            InitialValue: 0
        }
    }, {
        "ConditionTo": {
            InitialValue: 0
        }
    }, {
        "Value": {
            InitialValue: ""
        }
    }, {
        "ParentNodeId": {
            InitialValue: ""
        }
    }, {
        "IsPercentage": {
            DefaultValue: 0
        }
    }, {
        "Level": {
            InitialValue: 0
        }
    }, {
        "DrillDownState": {
            InitialValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);

}

var RuleConditionSet_onDelete = async function (req) {
    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {

        // var oDeleteRulesCondition = oConnection.loadProcedure(
        // 	"delete_rule_condition");

        // var aResults = oDeleteRulesCondition(oEntityData.NodeId);

        //+rajithaw
        const { NodeId } = req.data;
        var dbQuery = ' Call "delete_rule_condition"( )'
        var aResults = await cds.run(dbQuery, { NodeId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

    } catch (oError) {
        throw oError;
    }
}

var RuleConditionSet_onDelete = async function (req) {

    var oValidationRule = {
        "00": [{
            "NodeId": [{
                MandatoryCheck: true
            }]
        }]
    };

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeDeleteProcess(oValidationRule, null, oParam);

}

var MessageTypeMaintenanceSet_onCreate = async function (req) {

    try {
        //vesta commented till its sorted
        // var oConnection = $.hdb.getConnection();
        // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

        // var oCreateMessageTypeMaintenance = oConnection.loadProcedure(
        // 	"create_message_type_maintenance");

        // var aResults = oCreateMessageTypeMaintenance(oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.ValidFrom,
        // 	oEntityData.ValidTo, oEntityData.MessageTypeId
        // );


        //+rajithaw
        const { RuleId, EventTypeId, ValidFrom, ValidTo, MessageTypeId } = req.data;
        var dbQuery = ' Call "create_message_type_maintenance"( )'
        var aResults = await cds.run(dbQuery, { RuleId, EventTypeId, ValidFrom, ValidTo, MessageTypeId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }

        //vesta commented till its sorted
        // oEntityData.MessageTypeUuid = aResults.EV_NEW_MESSAGETYPEUUID;
        // oCoreUtility.updateTemporaryTable(oParam.connection, oParam.afterTableName, oEntityData);
    } catch (oErrorMessage) {
        throw oErrorMessage;
    }

}

var MessageTypeMaintenanceSet_onBeforeCreate = async function (req) {

    var oValidationRule = {
        "00": [{
            "RuleId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_RULETEXT",
                    FieldToCheck: "RULEID"
                }
            }]
        }, {
            "EventTypeId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_EVENTTYPETEXT",
                    FieldToCheck: "EVENTTYPEID"
                }
            }]
        }, {
            "ValidTo": {
                SingleDateCheck: {
                    PropertyName: "ValidFrom",
                    Operator: ">="// $.vesta.core.operator.GE
                }
            }
        }, {
            "ValidFrom": {
                SingleDateCheck: {
                    PropertyName: "ValidTo",
                    Operator: "<="// $.vesta.core.operator.LE
                }
            }
        }, {
            "MessageTypeId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "CA_MESSAGETYPE",
                    FieldToCheck: "MESSAGETYPEID"
                }
            }]
        }]
    };

    var aEntityUpdateRule = [{
        "MessageTypeUuid": {
            DefaultValue: ""
        }
    }, {
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            DefaultValue: ""
        }
    }, {
        "ValidFrom": {
            DefaultValue: $.constant.Date.TODAY_DATE
        }
    }, {
        "ValidTo": {
            DefaultValue: $.constant.Date.MAX_DATE
        }
    }, {
        "MessageType": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeCreateProcess(oValidationRule, aEntityUpdateRule, oParam);

}

var MessageTypeMaintenanceSet_onUpdate = async function (req) {

    //vesta commented till its sorted
    // var oConnection = $.hdb.getConnection();
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.afterTableName);

    try {
        // var oUpdateMessageTypeMaintenance = oConnection.loadProcedure(
        // 	"update_message_type_maintenance");

        // var aResults = oUpdateMessageTypeMaintenance(oEntityData.MessageTypeUuid, oEntityData.RuleId, oEntityData.EventTypeId, oEntityData.ValidFrom,
        // 	oEntityData.ValidTo, oEntityData.MessageTypeId
        // );

        //+rajithaw
        const { MessageTypeUuid, RuleId, EventTypeId, ValidFrom, ValidTo, MessageTypeId } = req.data;
        var dbQuery = ' Call "update_message_type_maintenance"( )'
        var aResults = await cds.run(dbQuery, { MessageTypeUuid, RuleId, EventTypeId, ValidFrom, ValidTo, MessageTypeId })
        //+rajithaw

        var aError = [];
        for (var sItem of aResults.ET_RETURN) {
            aError.push({
                type: sItem.TYPE,
                message: sItem.MESSAGE
            });
        }

        if (aError.length) {
            throw aError;
        }
    } catch (oError) {
        throw oError;
    }

}

var MessageTypeMaintenanceSet_onBeforeUpdate = async function (req) {

    var oValidationRule = {
        "00": [{
            "MessageTypeUuid": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_MESSAGETYPEMAINTENANCE",
                    FieldToCheck: "MESSAGETYPEUUID"
                }
            }]
        }, {
            "RuleId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_RULETEXT",
                    FieldToCheck: "RULEID"
                }
            }]
        }, {
            "EventTypeId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_EVENTTYPETEXT",
                    FieldToCheck: "EVENTTYPEID"
                }
            }]
        }, {
            "ValidTo": {
                SingleDateCheck: {
                    PropertyName: "ValidFrom",
                    Operator: ">="  // $.vesta.core.operator.GE
                }
            }
        }, {
            "ValidFrom": {
                SingleDateCheck: {
                    PropertyName: "ValidTo",
                    Operator: "<="  //$.vesta.core.operator.LE
                }
            }
        }, {
            "MessageTypeId": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "CA_MESSAGETYPE",
                    FieldToCheck: "MESSAGETYPEID"
                }
            }]
        }]
    };

    var aEntityUpdateRule = [{
        "MessageTypeUuid": {
            DefaultValue: ""
        }
    }, {
        "RuleId": {
            DefaultValue: ""
        }
    }, {
        "Rule": {
            DefaultValue: ""
        }
    }, {
        "EventTypeId": {
            DefaultValue: ""
        }
    }, {
        "EventType": {
            DefaultValue: ""
        }
    }, {
        "ValidFrom": {
            DefaultValue: $.constant.Date.TODAY_DATE
        }
    }, {
        "ValidTo": {
            DefaultValue: $.constant.Date.MAX_DATE
        }
    }, {
        "MessageTypeId": {
            DefaultValue: ""
        }
    }, {
        "MessageType": {
            DefaultValue: ""
        }
    }];

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeUpdateProcess(oValidationRule, aEntityUpdateRule, oParam);

}


var MessageTypeMaintenanceSet_onDelete = async function (req) {

    //vesta commented till its sorted
    // var oStatement;
    // var oEntityData = oCoreUtility.getEntityData(oParam.connection, oParam.beforeTableName);

    try {
        // oStatement = oParam.connection.prepareStatement(
        // 	"DELETE FROM \"PR.MessageTypeMaintenance\" WHERE \"MESSAGETYPEUUID\"=?"
        // );
        // oStatement.setString(1, oEntityData.MessageTypeUuid);
        // oStatement.executeUpdate();
        // oStatement.close();

        //+rajithaw{
        var { CompetitorProductUuid } = req.data;
        var oResultSet = await cds.run('DELETE FROM \"PR_MESSAGETYPEMAINTENANCE\" WHERE \"MESSAGETYPEUUID\"=?', [1, CompetitorProductUuid]);
        //+rajithaw}

    } catch (oError) {
        throw oError;
        //vesta commented till its sorted
        // throw oCoreUtility.convertError(oError);
    }

}

var MessageTypeMaintenanceSet_onBeforeDelete = async function (req) {

    var oValidationRule = {
        "00": [{
            "MessageTypeUuid": [{
                MandatoryCheck: true
            }, {
                ExistenceCheck: {
                    CheckTable: "PR_MESSAGETYPEMAINTENANCE",
                    FieldToCheck: "MESSAGETYPEUUID"
                }
            }]
        }]
    };

    //vesta commented till its sorted
    //return oCoreUtility.executeBeforeDeleteProcess(oValidationRule, null, oParam);

}