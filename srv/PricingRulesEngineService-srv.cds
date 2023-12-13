using {CV as CV} from '../db/CV';
using {CD_RULE_CONDITION_HIERARCHY as CD_RULE_CONDITION_HIERARCHY} from '../db/datamodel';

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

    entity MessageTypeMaintenanceSet           as projection on CV.MessageTypeMaintenanceView;
}
