using { Core as Core } from './Core';


context PR {
    @title : 'Configuration Item'
    entity ConfigurationItem {
            @title : 'Menu Id'
        key MENUID          : Core.MenuIdT;

            @title : 'Description'
            DESCRIPTION     : Core.DescriptionT;

            @title : 'Long Description'
            LONGDESCRIPTION : Core.VeryLongDescriptionT;

            @title : 'EntitySet Name'
            ENTITYSETNAME   : Core.EntitySetNameT;
    }

    @title : 'Pricing Rule'
    entity PricingRule {
            @title : 'Rule Id'
        key RULEID        : Core.RuleIdT;

            @title : 'Rule Type Id'
            RULETYPEID    : Core.RuleTypeIdT;

            @title : 'Message Number'
            MESSAGENUMBER : Core.MessageNumberT;

            @title : 'Priority'
            PRIORITY      : Core.PriorityT;
    }

    @title : 'Event Type'
    entity EventTypeText {
            @title : 'Event Type Id'
        key EVENTTYPEID : Core.EventTypeIdT;

            @title : 'Language Key'
        key LANGUAGEKEY : Core.LanguageKeyT;

            @title : 'Description'
            DESCRIPTION : Core.DescriptionT;
    }

    @title : 'Access Sequence'
    entity AccessSequence {
            @title : 'Access Sequence Uuid'
        key ACCESSSEQUENCEUUID : Core.UuidT;

            @title : 'Rule Id'
            RULEID             : Core.RuleIdT;

            @title : 'Event Type Id'
            EVENTTYPEID        : Core.EventTypeIdT;

            @title : 'Dimension Id'
            DIMENSIONID        : Core.DimensionIdT;

            @title : 'Priority'
            PRIORITY           : Core.PriorityT;
    }

    @title : 'Rule Condition'
    entity RuleCondition {
            @title : 'Rule Condition Uuid'
        key RULECONDITIONUUID     : Core.UuidT;

            @title : 'Rule Id'
            RULEID                : Core.RuleIdT;

            @title : 'Event Type Id'
            EVENTTYPEID           : Core.EventTypeIdT;

            @title : 'Dimension Id'
            DIMENSIONID           : Core.DimensionIdT;

            @title : 'Sales Organization ID'
            SALESORGANIZATIONID   : Core.SalesOrganizationIdT;

            @title : 'Distribution Channel ID'
            DISTRIBUTIONCHANNELID : Core.DistributionChannelIdT;

            @title : 'Rounding Profile'
            PROFILEID             : Core.ProfileIdT;

            @title : 'Validity From'
            VALIDFROM             : Core.DateT;

            @title : 'Validity To'
            VALIDTO               : Core.DateT;

            @title : 'Is Percentage'
            ISPERCENTAGE          : Core.BooleanFlagT;
    }

    @title : 'Event Rule Dimension'
    entity EventRuleDimension {
            @title : 'Rule Condition Uuid'
        key RULECONDITIONUUID : Core.UuidT;

            @title : 'Dimension Id'
        key DIMENSIONID       : Core.DimensionIdT;

            @title : 'Dimension Value'
        key DIMENSIONVALUE    : Core.DimensionValueT;
    }

    @title : 'Event Rule Condition'
    entity EventRuleCondition {
            @title : 'Event Rule Condition Uuid'
        key EVENTRULECONDITIONUUID : Core.UuidT;

            @title : 'Rule Condition Uuid'
            RULECONDITIONUUID      : Core.UuidT;

            @title : 'Condition Value from'
            CONDITIONFROM          : Core.ConditionRangeValueT;

            @title : 'Condition Value To'
            CONDITIONTO            : Core.ConditionRangeValueT;

            @title : 'Value'
            VALUE                  : Core.ValueT;
    }

    @title : 'Message Type Maintenance'
    entity MessageTypeMaintenance {
            @title : 'Message Type Uuid'
        key MESSAGETYPEUUID : Core.UuidT;

            @title : 'Rule Id'
            RULEID          : Core.RuleIdT;

            @title : 'Event Type Id'
            EVENTTYPEID     : Core.EventTypeIdT;

            @title : 'Validity From'
            VALIDFROM       : Core.DateT;

            @title : 'Validity To'
            VALIDTO         : Core.DateT;

            @title : 'Message Type Id'
            MESSAGETYPEID   : Core.MessageTypeIdT;
    }

    @title : 'Rule Type'
    entity RuleTypeText {
            @title : 'Rule Type Id'
        key RULETYPEID  : Core.RuleTypeIdT;

            @title : 'Language Key'
        key LANGUAGEKEY : Core.LanguageKeyT;

            @title : 'Description'
            DESCRIPTION : Core.DescriptionT;
    }

    @title : 'Dimension'
    entity DimensionText {
            @title : 'Dimension Id'
        key DIMENSIONID : Core.DimensionIdT;

            @title : 'Language Key'
        key LANGUAGEKEY : Core.LanguageKeyT;

            @title : 'Description'
            DESCRIPTION : Core.DescriptionT;

            @title : 'Has Dimension Value'
            HASVALUE    : Core.BooleanFlagT;
    }

    @title : 'Rule'
    entity RuleText {
            @title : 'Rule Id'
        key RULEID      : Core.RuleIdT;

            @title : 'Language Key'
        key LANGUAGEKEY : Core.LanguageKeyT;

            @title : 'Description'
            DESCRIPTION : Core.DescriptionT;
    }

    @title : 'Rule Screen Configuration'
    entity RuleScreenConfiguration {
            @title : 'Rule Id'
        key RULEID                : Core.RuleIdT;

            @title : 'Has Multiple'
            HASMULTIPLE           : Core.BooleanFlagT;

            @title : 'Has Condition'
            HASCONDITION          : Core.BooleanFlagT;

            @title : 'Has Value'
            HASVALUE              : Core.BooleanFlagT;

            @title : 'Has Rounding'
            HASROUNDING           : Core.BooleanFlagT;

            @title : 'Has Currency / Percentage'
            HASCURRENCYORPERCENTAGE : Core.BooleanFlagT;
    }

    @title : 'Rule Definition'
    entity RuleDefinition {
            @title : 'Rule Id'
        key RULEID      : Core.RuleIdT;

            @title : 'Language Key'
        key LANGUAGEKEY : Core.LanguageKeyT;

            @title : 'Definition'
            DEFINITION  : Core.DefinitionT;
    }

    @title : 'Rounding Profile'
    entity RoundingProfile {
            @title : 'ProfileId'
        key PROFILEID : Core.ProfileIdT;

            @title : 'Value'
            VALUE     : Core.ProfileValueT;
    }
};