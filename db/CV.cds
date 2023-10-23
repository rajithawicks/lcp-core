using CA;
using PR;
using CD_DISTRIBUTION_CHANNEL;
using CD_SALES_ORGANIZATION;

context CV {
     /* const are not yet supported in CDS so that why we have to use values directly in where condition */
  //  const C_CLIENT               : String(3) = '100';
  //  const C_PRICING_RULES_ENGINE : String(3) = 'PRE';

    @title : 'Configuration Item view'
    view ConfigurationItemView as
        select from PR.ConfigurationItem
        {
            @title : 'Menu Id'
            ConfigurationItem.MENUID          as MenuId,

            @title : 'Description'
            ConfigurationItem.DESCRIPTION     as Description,

            @title : 'Long Description'
            ConfigurationItem.LONGDESCRIPTION as LongDescription,

            @title : 'Entity Set Name'
            ConfigurationItem.ENTITYSETNAME   as EntitySetName
        };

    @title : 'Pricing Rule View'
    view PricingRuleView as
        select from     PR.PricingRule
        left outer join PR.RuleText     on
            PricingRule.RULEID = RuleText.RULEID
        left outer join PR.RuleTypeText on
            PricingRule.RULETYPEID = RuleTypeText.RULETYPEID
        {
            @title : 'Rule ID'
            PricingRule.RULEID                    as RuleId,

            @title : 'Rule Description'
            RuleText.DESCRIPTION                  as Rule,

            @title : 'Rule Type Id'
            PricingRule.RULETYPEID                as RuleTypeId,

            @title : 'Rule Type Description'
            RuleTypeText.DESCRIPTION              as RuleType,

            @title : 'Message Number'
            PricingRule.MESSAGENUMBER             as MessageNumber,

            @title : 'Priority'
            cast(PricingRule.PRIORITY as Integer) as Priority
        }
        where
            PricingRule.PRIORITY <> -1;

    // @title : 'Access Sequence view'
    // view AccessSequenceView as
    //     select from     PR.AccessSequence
    //     left outer join PR.PricingRule    on
    //         AccessSequence.RULEID = PricingRule.RULEID
    //     left outer join PR.RuleText       on
    //         AccessSequence.RULEID = RuleText.RULEID
    //     left outer join PR.EventTypeText  on
    //         AccessSequence.EVENTTYPEID = EventTypeText.EVENTTYPEID
    //     left outer join PR.DimensionText  on
    //         AccessSequence.DIMENSIONID = DimensionText.DIMENSIONID
    //     {
    //         @title : 'Access Sequence Uuid'
    //         AccessSequence.ACCESSSEQUENCEUUID                       as AccessSequenceUuid,

    //         @title : 'Rule Id'
    //         AccessSequence.RULEID                    as RuleId,

    //         @title : 'Rule Description'
    //         RuleText.DESCRIPTION                     as Rule,

    //         @title : 'Event Type Id'
    //         AccessSequence.EVENTTYPEID               as EventTypeId,

    //         @title : 'Event Type Description'
    //         EventTypeText.DESCRIPTION                as EventType,

    //         @title : 'Dimension Id'
    //         AccessSequence.DIMENSIONID               as DimensionId,

    //         @title : 'Dimension Description'
    //         DimensionText.DESCRIPTION                as Dimension,

    //         @title : 'Priority'
    //         cast(AccessSequence.PRIORITY as Integer) as Priority
    //     };

    /*
     * Consumed By:
     * PricingRulesEngine
    */
//     @title : 'Rule Condition view'
//  view RuleConditionView as
//         select from     PR.RuleCondition
//         left outer join PR.PricingRule          on
//                 RuleCondition.RULEID = PricingRule.RULEID
//         left outer join PR.RuleText             on
//                 RuleCondition.RULEID = RuleText.RULEID
//         left outer join PR.EventTypeText        on
//                 RuleCondition.EVENTTYPEID = EventTypeText.EVENTTYPEID
//         left outer join PR.EventRuleDimension   on
//                 RuleCondition.RULECONDITIONUUID = EventRuleDimension.RULECONDITIONUUID
//             and RuleCondition.DIMENSIONID       = EventRuleDimension.DIMENSIONID
//         left outer join PR.DimensionText        on
//                 EventRuleDimension.DIMENSIONID = DimensionText.DIMENSIONID
//         left outer join PR.EventRuleCondition   on
//                 RuleCondition.RULECONDITIONUUID = EventRuleCondition.RULECONDITIONUUID
//         left outer join PR.RoundingProfile      on
//                 RuleCondition.PROFILEID = RoundingProfile.PROFILEID
//         left outer join CD_SALES_ORGANIZATION  on
//                 RuleCondition.SALESORGANIZATIONID = CD_SALES_ORGANIZATION.SalesOrganizationId
//         left outer join CD_DISTRIBUTION_CHANNEL on
//                 RuleCondition.DISTRIBUTIONCHANNELID = CD_DISTRIBUTION_CHANNEL.DistributionChannelId
//         {
//             @title : 'Rule Condition Uuid'
//             RuleCondition.RULECONDITIONUUID             as RuleConditionUuid,

//             @title : 'Rule Id'
//             RuleCondition.RULEID                        as RuleId,

//             @title : 'Rule Description'
//             RuleText.DESCRIPTION                        as Rule,

//             @title : 'Event Type Id'
//             RuleCondition.EVENTTYPEID                   as EventTypeId,

//             @title : 'Event Type Description'
//             EventTypeText.DESCRIPTION                   as EventType,

//             @title : 'Sales Organization ID'
//             RuleCondition.SALESORGANIZATIONID                         as SalesOrganizationId,

//             @title : 'Sales Organization'
//             CD_SALES_ORGANIZATION.SalesOrganization     as SalesOrganization,

//             @title : 'Distribution Channel ID'
//             RuleCondition.DISTRIBUTIONCHANNELID                       as DistributionChannelId,

//             @title : 'Distribution Channel'
//             CD_DISTRIBUTION_CHANNEL.DistributionChannel as DistributionChannel,

//             @title : 'Dimension Id'
//             EventRuleDimension.DIMENSIONID              as DimensionId,

//             @title : 'Dimension Description'
//             DimensionText.DESCRIPTION                   as Dimension,

//             @title : 'Has Dimension Value'
//             DimensionText.HASVALUE                      as HasDimensionValue,

//             @title : 'Dimension Value'
//             EventRuleDimension.DIMENSIONVALUE           as DimensionValue,

//             @title : 'Valid From'
//             RuleCondition.VALIDFROM                     as ValidFrom,

//             @title : 'Valid To'
//             RuleCondition.VALIDTO                       as ValidTo,

//             @title : 'Is Percentage'
//             RuleCondition.ISPERCENTAGE                  as IsPercentage,

//             @title : 'Rounding Profile Id'
//             RoundingProfile.PROFILEID                   as RoundingProfileId,

//             @title : 'Rounding Profile Value'
//             RoundingProfile.VALUE                       as RoundingProfile,

//             @title : 'Condition From'
//             EventRuleCondition.CONDITIONFROM            as ConditionFrom,

//             @title : 'Condition To'
//             EventRuleCondition.CONDITIONTO              as ConditionTo,

//             @title : 'Value'
//             EventRuleCondition.VALUE                    as Value
//         }
//         where
//                 CD_SALES_ORGANIZATION.SAPClient   = '100'
//             and CD_DISTRIBUTION_CHANNEL.SAPClient = '100';

    @title : 'MessageType Maintenance View'
    view MessageTypeMaintenanceView as
        select from     PR.MessageTypeMaintenance
        left outer join PR.PricingRule            on
            MessageTypeMaintenance.RULEID = PricingRule.RULEID
        left outer join PR.RuleText               on
            MessageTypeMaintenance.RULEID = RuleText.RULEID
        left outer join PR.EventTypeText          on
            MessageTypeMaintenance.EVENTTYPEID = EventTypeText.EVENTTYPEID
        left outer join CA.MessageType            on
            MessageTypeMaintenance.MESSAGETYPEID = MessageType.MESSAGETYPEID
        {
            @title : 'Message Type Uuid'
            MessageTypeMaintenance.MESSAGETYPEUUID as MessageTypeUuid,

            @title : 'Rule Id'
            MessageTypeMaintenance.RULEID          as RuleId,

            @title : 'Rule Description'
            RuleText.DESCRIPTION                   as Rule,

            @title : 'Event Type Id'
            MessageTypeMaintenance.EVENTTYPEID     as EventTypeId,

            @title : 'Event Type Description'
            EventTypeText.DESCRIPTION              as EventType,

            @title : 'Valid From'
            MessageTypeMaintenance.VALIDFROM       as ValidFrom,

            @title : 'Valid To'
            MessageTypeMaintenance.VALIDTO         as ValidTo,

            @title : 'Message Type Id'
            MessageTypeMaintenance.MESSAGETYPEID   as MessageTypeId,

            @title : 'Message Type'
            MessageType.DESCRIPTION                as MessageType
        };

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * PricingRulesConfiguration : Rules Definition Tab
    */
    @title : 'Rule Definition view'
    view RuleDefinitionView as
        select from     PR.RuleDefinition
        left outer join PR.RuleText       on
            RuleDefinition.RULEID = RuleText.RULEID
        {
            @title : 'Rule Id'
            RuleDefinition.RULEID as RuleId,

            @title : 'Rule Description'
            RuleText.DESCRIPTION  as Rule,

            @title : 'Rule Definition'
            RuleDefinition.DEFINITION            as Definition
        };

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * PricingRulesConfiguration : System Message Tab
    */
    @title : 'System Message view'
    view SystemMessageView as
        select from     PR.PricingRule
        left outer join CA.MessageClassText on
            PricingRule.MESSAGENUMBER = MessageClassText.MESSAGENUMBER
        left outer join PR.RuleText         on
            PricingRule.RULEID = RuleText.RULEID
        {
            @title : 'Rule Id'
            PricingRule.RULEID           as RuleId,

            @title : 'Rule Description'
            RuleText.DESCRIPTION         as Rule,

            @title : 'Message Number'
            PricingRule.MESSAGENUMBER    as MessageNumber,

            @title : 'Message Class Id'
            MessageClassText.CLASSID     as ClassId,

            @title : 'Language Key'
            MessageClassText.LANGUAGEKEY as LanguageKey,

            @title : 'System Message'
            MessageClassText.TEXT        as SystemMessage
        }
        where
                PricingRule.MESSAGENUMBER <>     ''
            and MessageClassText.CLASSID  =      'PRE'
            and MessageClassText.TEXT     is not null;

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * - as navigation from Rule Condition
    */
    // @title : 'Event Rule Condition view'
    // view EventRuleConditionView as
    //     select from PR.EventRuleCondition
    //     {
    //         @title : 'Event Rule Condition Uuid'
    //         EventRuleCondition.EVENTRULECONDITIONUUID as EventRuleConditionUuid,

    //         @title : 'Rule Condition Uuid'
    //         EventRuleCondition.RULECONDITIONUUID      as RuleConditionUuid,

    //         @title : 'Condition From'
    //         EventRuleCondition.CONDITIONFROM          as ConditionFrom,

    //         @title : 'Condition To'
    //         EventRuleCondition.CONDITIONTO            as ConditionTo,

    //         @title : 'Value'
    //         EventRuleCondition.VALUE                  as Value
    //     };

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * - as navigation from Rule Condition
    */
    @title : 'Event Rule Dimension view'
    view EventRuleDimensionView as
        select from     PR.EventRuleDimension
        left outer join PR.DimensionText      on
            EventRuleDimension.DIMENSIONID = DimensionText.DIMENSIONID
        {
            @title : 'Event Rule Condition Uuid'
            EventRuleDimension.RULECONDITIONUUID              as RuleConditionUuid,

            @title : 'Dimension Id'
            EventRuleDimension.DIMENSIONID as DimensionId,

            @title : 'Dimension Description'
            DimensionText.DESCRIPTION                    as Dimension,

            @title : 'Dimension Value'
            EventRuleDimension.DIMENSIONVALUE                 as DimensionValue
        };

    // @title : 'Rule Message view'
    // view RuleMessageView as
    //     select from     PR.PricingRule
    //     left outer join PR.RuleText               on
    //         PricingRule.RULEID = RuleText.RULEID
    //     inner join      PR.MessageTypeMaintenance on
    //         PricingRule.RULEID = MessageTypeMaintenance.RULEID
    //     left outer join PR.EventTypeText          on
    //         MessageTypeMaintenance.EVENTTYPEID = EventTypeText.EVENTTYPEID
    //     inner join      CA.MessageType            on
    //         MessageTypeMaintenance.MESSAGETYPEID = MessageType.MESSAGETYPEID
    //     left outer join CA.MessageClassText       on
    //         PricingRule.MESSAGENUMBER = MessageClassText.MESSAGENUMBER
    //     {
    //         @title : 'Rule Id'
    //         PricingRule.RULEID                   as RuleId,

    //         @title : 'Rule Description'
    //         RuleText.DESCRIPTION                 as Rule,

    //         @title : 'Event Type Id'
    //         MessageTypeMaintenance.EVENTTYPEID   as EventTypeId,

    //         @title : 'Event Type Description'
    //         EventTypeText.DESCRIPTION            as EventType,

    //         @title : 'Valid From'
    //         MessageTypeMaintenance.VALIDFROM     as ValidFrom,

    //         @title : 'Valid To'
    //         MessageTypeMaintenance.VALIDTO       as ValidTo,

    //         @title : 'Message Type Id'
    //         MessageTypeMaintenance.MESSAGETYPEID as MessageTypeId,

    //         @title : 'Message Type Description'
    //         MessageType.DESCRIPTION              as MessageType,

    //         @title : 'Message Text Language Key'
    //         MessageClassText.LANGUAGEKEY         as LanguageKey,

    //         @title : 'Message Text'
    //         MessageClassText.TEXT                as Message
    //     }
    //     where
    //         MessageClassText.CLASSID = 'PRE';

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * PricingRulesConfiguration : Rules Condition Tab
    */
    @title : 'Rule Screen Configuration view'
    view RuleScreenConfigurationView as
        select from PR.RuleScreenConfiguration
        {
            @title : 'Rule Id'
            RuleScreenConfiguration.RULEID                  as RuleId,

            @title : 'Has Multiple'
            RuleScreenConfiguration.HASMULTIPLE             as HasMultiple,

            @title : 'Has Condition'
            RuleScreenConfiguration.HASCONDITION            as HasCondition,

            @title : 'Has Value'
            RuleScreenConfiguration.HASVALUE                as HasValue,

            @title : 'Has Rounding'
            RuleScreenConfiguration.HASROUNDING             as HasRounding,

            @title : 'Has Currency / Percentage'
            RuleScreenConfiguration.HASCURRENCYORPERCENTAGE as HasCurrencyOrPercentage
        };

    /*
     * Consumed By:
     * PricingRulesEngineService.xsodata
     * PricingRulesConfiguration : Rules Condition Tab
    */
    @title : 'Dimension view'
    view DimensionView as
        select from PR.DimensionText
        {
            @title : 'Dimension Id'
            DimensionText.DIMENSIONID as DimensionId,

            @title : 'Description'
           DimensionText.DESCRIPTION as Description,

            @title : 'Has Dimension Value'
            DimensionText.HASVALUE    as HasValue
        };

};