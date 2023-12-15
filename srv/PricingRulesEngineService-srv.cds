//rajithaw
using {CV as CV} from '../db/CV';
using {VH as VH} from '../db/VH';
using {CD_RULE_CONDITION_HIERARCHY as CD_RULE_CONDITION_HIERARCHY,
       CD_DIMENSION as CD_DIMENSION} from '../db/datamodel';

service PricingRulesEngineService {

    @readonly
    entity ConfigurationItemSet       as projection on CV.ConfigurationItemView;

    entity PricingRuleSet             as projection on CV.PricingRuleView;
    entity AccessSequenceSet          as projection on CV.AccessSequenceView;
    entity EventRuleConditionSet      as projection on CV.EventRuleConditionView;
    entity EventRuleDimensionSet      as projection on CV.EventRuleDimensionView;

    @readonly
    entity RuleDefinitionSet          as projection on CV.RuleDefinitionView;

    @readonly
    entity RuleScreenConfigurationSet as projection on CV.RuleScreenConfigurationView;

    entity RuleConditionSet           as projection on CD_RULE_CONDITION_HIERARCHY;
    entity MessageTypeMaintenanceSet  as projection on CV.MessageTypeMaintenanceView;
    entity SystemMessageSet           as projection on CV.SystemMessageView;

    @readonly
    entity DimensionSet               as projection on CV.DimensionView;

    @readonly
    entity VH_RuleTypeSet             as projection on VH.RuleTypeView;

    @readonly
    entity VH_RuleSet                 as projection on VH.RuleView;

    @readonly
    entity VH_EventTypeSet            as projection on VH.EventTypeView;


    @readonly
    entity VH_MessageTypeSet          as projection on VH.MessageTypeView;

    @readonly
    entity VH_DimensionSet            as projection on VH.DimensionView;


    @readonly
    entity VH_RoundingProfileSet      as projection on VH.RoundingProfileView;

    @readonly
    entity VH_SalesOrganizationSet    as projection on VH.SalesOrganizationView;

    @readonly
    entity VH_DistributionChannelSet  as projection on VH.DistributionChannelView;

    @readonly
    entity SH_DimensionSet            as projection on CD_DIMENSION;
}
