using {Core as Core} from './Core';
using {CV as CV} from './CV';


// @cds.persistence.exists     //temp until the issue is sorted
// @cds.persistence.calcview   // temp untill the issue is sorted
entity CD_DISTRIBUTION_CHANNEL {
    SAPClient             : String(40);
    DistributionChannelId : String(40);
    DistributionChannel   : String(40);
}

// @cds.persistence.exists    // temp  until issue is sorted
// @cds.persistence.calcview  // temp  until issue is sorted
entity CD_SALES_ORGANIZATION {
    SalesOrganizationId : String(4);
    SalesOrganization   : String(20);
    SAPClient           : String(3);
}



@cds.persistence.exists
entity MaterialGroup {
    SAPClient                  : String(3);
    MaterialGroupId            : String(9);
    MaterialGroup              : String(20);
    Division                   : String(2);
    MaterialGroupRefMaterial   : String(40);
    MaterialGroupMaterial      : String(40);
    MaterialAuthorizationGroup : String(4);
    MaterialWeightUnitDefault  : String(3);
    MaterialValuationClass     : String(4);
    PurchasingValueKey         : String(4);
    AssetClassDefault          : String(8);
}


entity CD_RULE_CONDITION_HIERARCHY {

    key NodeId                                     : Core.UuidT;
        ConditionFrom                              : Core.ConditionRangeValueT;
        ConditionTo                                : Core.ConditionRangeValueT;
        Value                                      : Core.ValueT;
        RuleId                                     : Core.RuleIdT;
        EventTypeId                                : Core.EventTypeIdT;
        SalesOrganizationId                        : Core.SalesOrganizationIdT;
        SalesOrganization                          : String(20);
        DistributionChannelId                      : Core.DistributionChannelIdT;
        EVENTTYPE                                  : Core.DescriptionT;
        DistributionChannel                        : String(40);
        DimensionId                                : Core.DimensionIdT;
        RULE                                       : Core.DescriptionT;
        ROUNDINGPROFILEID                          : Core.ProfileIdT;
        ROUNDINGPROFILE                            : Core.ProfileValueT;
        VALIDFROM                                  : Core.DateT;
        VALIDTO                                    : Core.DateT;
        DIMENSION                                  : Core.DescriptionT;
        DIMENSIONS                                 : String(5000);
        HASVALUE                                   : Core.BooleanFlagT;
        ISPERCENTAGE                               : Core.BooleanFlagT;
        ParentNodeId                               : String(32);
        Level                                      : Integer;
        DrillDownState                             : String(14);
        Assoc_RuleConditionToEventRuleConditionSet : Association to many CV.EventRuleConditionView
                                                         on Assoc_RuleConditionToEventRuleConditionSet.RuleConditionUuid = NodeId;

        Assoc_RuleConditionToEventRuleDimensionSet : Association to many CV.EventRuleDimensionView
                                                         on Assoc_RuleConditionToEventRuleDimensionSet.RuleConditionUuid = NodeId;
}

// @cds.persistence.exists     //temp untill the issue is sorted
// @cds.persistence.calcview   //temp untill the issue is sorted
entity CD_DIMENSION {

    key Dimension : String(3);
    key Code      : String(64);
        Text      : String(64);

}
