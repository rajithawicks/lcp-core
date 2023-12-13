using { CA as CA } from './CA';
using { PR as PR } from './PR';
using { CD_DISTRIBUTION_CHANNEL as CD_DISTRIBUTION_CHANNEL ,
        CD_SALES_ORGANIZATION  as CD_SALES_ORGANIZATION,
} from './datamodel';


context VH {
     /* const are not yet supported in CDS so that why we have to use values directly in where condition */
 //   const C_PRICING_RULES_ENGINE : String(3) = 'PRE';

    @title : 'Rule Type View'
    view RuleTypeView as
        select from PR.RuleTypeText
        {
            @title : 'Code'
            RuleTypeText.RULETYPEID  as Code,

            @title : 'Text'
            RuleTypeText.DESCRIPTION as Text
        };

    @title : 'Rule View'
    view RuleView as
        select from PR.RuleText
        {
            @title : 'Code'
            RuleText.RULEID      as Code,

            @title : 'Text'
            RuleText.DESCRIPTION as Text
        };

    @title : 'Event Type View'
    view EventTypeView as
        select from PR.EventTypeText
        {
            @title : 'Code'
            EventTypeText.EVENTTYPEID as Code,

            @title : 'Text'
            EventTypeText.DESCRIPTION as Text
        };

    @title : 'Message Type View'
    view MessageTypeView as
        select from CA.MessageType
        {
            @title : 'Code'
            MessageType.MESSAGETYPEID as Code,

            @title : 'Text'
            MessageType.DESCRIPTION   as Text
        };

    @title : 'Dimension View'
    view DimensionView as
        select from PR.DimensionText
        {
            @title : 'Code'
            DimensionText.DIMENSIONID as Code,

            @title : 'Text'
            DimensionText.DESCRIPTION as Text
        };

    @title : 'Rounding Profile View'
    view RoundingProfileView as
        select from PR.RoundingProfile
        {
            @title : 'Code'
            RoundingProfile.PROFILEID as Code,

            @title : 'Text'
            RoundingProfile.VALUE     as Text
        };

    @title : 'Sales Organization View'
    view SalesOrganizationView as
        select from CD_SALES_ORGANIZATION
        {
            @title : 'Code'
            CD_SALES_ORGANIZATION.SalesOrganizationId as Code,

            @title : 'Text'
            CD_SALES_ORGANIZATION.SalesOrganization   as Text
        };

    @title : 'Distribution Channel View'
    view DistributionChannelView as
        select from CD_DISTRIBUTION_CHANNEL
        {
            @title : 'Code'
            CD_DISTRIBUTION_CHANNEL.DistributionChannelId as Code,

            @title : 'Text'
            CD_DISTRIBUTION_CHANNEL.DistributionChannel   as Text
        };
};