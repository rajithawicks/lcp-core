using {
    MULTICHANNELSALEVIEW             as MULTICHANNELSALEVIEW,
    MATERIALSALEDATEVIEW         as MATERIALSALEDATEVIEW,
    INVENTORYVISIBILITYVIEW      as INVENTORYVISIBILITYVIEW,
    Material                     as Material,
    MaterialGroup                as MaterialGroup,
    RETAILPRICEVIEW                  as RETAILPRICEVIEW,
    MERCHANDISECATEGORYHIERARCHYVIEW as MERCHANDISECATEGORYHIERARCHYVIEW,
    SALESORGANIZATIONVIEW            as SALESORGANIZATIONVIEW,
    DISTRIBUTIONCHANNELVIEW      as DISTRIBUTIONCHANNELVIEW,
    REGIONVIEW                   as REGIONVIEW

} from './datamodel';

using {CV as CV} from './CV';

context IV {
    /* const are not yet supported in CDS so that why we have to use values directly in where condition */
// const SAP_CLIENT : String(3) = '100'; // temporary hardcoded
// const COUNTRY_ID : String(3) = 'US';

view MaterialView as
    select from Material
    {
        Material.MaterialId             as MaterialId,
        Material.Material               as Material,
        Material.MaterialGroupId        as MaterialGroupId,
        Material.MaterialSeasonCategory as MaterialSeasonCategory
    }
    where
        Material.SAPClient = '100';

view MerchandiseCategoryHierarchyView as
    select from MERCHANDISECATEGORYHIERARCHYVIEW
    {
        MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupId            as MaterialGroupId,
        MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode2Text as MaterialGroupHierNode2Text,
        MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode2Name as MaterialGroupHierNode2Name,
        MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode3Text as MaterialGroupHierNode3Text,
        MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode3Name as MaterialGroupHierNode3Name
    }
    where
        MERCHANDISECATEGORYHIERARCHYVIEW.SAPClient = '100';

view InventoryVisibilityView as
    select from INVENTORYVISIBILITYVIEW
    {
        INVENTORYVISIBILITYVIEW.ProductId                                        as ProductId,
        INVENTORYVISIBILITYVIEW.LocationId                                       as LocationId,
        INVENTORYVISIBILITYVIEW.CurrentStock                                     as CurrentStock,
        INVENTORYVISIBILITYVIEW.OnOrderStockQuantity                             as OnOrderStockQuantity,
        INVENTORYVISIBILITYVIEW.CostPerStockUnit                                 as CostPerStockUnit,
        INVENTORYVISIBILITYVIEW.CurrentStockValuatedAtCostValueInCompanyCurrency as CurrentStockValuatedAtCostValueInCompanyCurrency
    }
    where
        INVENTORYVISIBILITYVIEW.SAPClient = '100';

view RetailPriceView as
    select from RETAILPRICEVIEW
    {
        RETAILPRICEVIEW.MaterialId            as MaterialId,
        RETAILPRICEVIEW.PlantId               as PlantId,
        RETAILPRICEVIEW.SalesOrganizationId   as SalesOrganizationId,
        RETAILPRICEVIEW.DistributionChannelId as DistributionChannelId,
        RETAILPRICEVIEW.RetailPrice           as RetailPrice,
        RETAILPRICEVIEW.CurrencyKey           as CurrencyKey,
        RETAILPRICEVIEW.UnitOfMeasureId       as UnitOfMeasureId
    }
    where
        RETAILPRICEVIEW.SAPClient = '100';

view MaterialSaleDateView as
    select from MATERIALSALEDATEVIEW
    {
        MATERIALSALEDATEVIEW.MaterialId            as MaterialId,
        MATERIALSALEDATEVIEW.SalesOrganizationId   as SalesOrganizationId,
        MATERIALSALEDATEVIEW.DistributionChannelId as DistributionChannelId,
        MATERIALSALEDATEVIEW.EarliestSaleDate      as EarliestSaleDate,
        MATERIALSALEDATEVIEW.LatestSaleDate        as LatestSaleDate
    }
    where
        MATERIALSALEDATEVIEW.SAPClient = '100';

view MultiChannelSaleView as
    select from MULTICHANNELSALEVIEW
    {
        MULTICHANNELSALEVIEW.ProductId                               as ProductId,
        MULTICHANNELSALEVIEW.LocationId                              as LocationId,
        MULTICHANNELSALEVIEW.BaseUnit                                as BaseUnitOfMeasureId,
        sum(MULTICHANNELSALEVIEW.FourWeekSalesQuantityInBaseUnit)    as FourWeekSalesQuantityInBaseUnit,
        sum(MULTICHANNELSALEVIEW.FourWeekSalesQuantityInSalesUnit)   as FourWeekSalesQuantityInSalesUnit,
        sum(MULTICHANNELSALEVIEW.SalesQuantityInBaseUnit)            as SalesQuantityInBaseUnit,
        sum(MULTICHANNELSALEVIEW.SalesQuantityInSalesUnit)           as SalesQuantityInSalesUnit,
        sum(MULTICHANNELSALEVIEW.FourWeekNetSalesAmount)             as FourWeekNetSalesAmount,
        sum(MULTICHANNELSALEVIEW.NetSalesAmount)                     as NetSalesAmount,
        sum(MULTICHANNELSALEVIEW.NetSalesAmount) - sum(MULTICHANNELSALEVIEW.CostAmount_E) as GrossMargin,
        case
            when sum(MULTICHANNELSALEVIEW.NetSalesAmount) > 0 then((sum(MULTICHANNELSALEVIEW.NetSalesAmount) -sum(MULTICHANNELSALEVIEW.CostAmount_E)) / sum(MULTICHANNELSALEVIEW.NetSalesAmount)) * 100
            else                              0
        end                                     as GrossMarginPercent
    }
    where
        MULTICHANNELSALEVIEW.SAPClient = '100'
    group by
        MULTICHANNELSALEVIEW.ProductId,
        MULTICHANNELSALEVIEW.LocationId,
        MULTICHANNELSALEVIEW.BaseUnit;

view SalesOrganizationView as
    select from SALESORGANIZATIONVIEW distinct
    {
        SALESORGANIZATIONVIEW.SalesOrganizationId as SalesOrganizationId,
        SALESORGANIZATIONVIEW.SalesOrganization   as SalesOrganization
    }
    where
        SALESORGANIZATIONVIEW.SAPClient = '100';

view DistributionChannelView as
    select from DISTRIBUTIONCHANNELVIEW distinct
    {
        DISTRIBUTIONCHANNELVIEW.DISTRIBUTIONCHANNELID as DistributionChannelId,
        DISTRIBUTIONCHANNELVIEW.DISTRIBUTIONCHANNEL   as DistributionChannel
    }
    where
        DISTRIBUTIONCHANNELVIEW.SAPCLIENT = '100';

view RegionView as
    select from REGIONVIEW distinct
    {
        REGIONVIEW.RegionId as RegionId,
        REGIONVIEW.Region   as Region
    }
    where
            REGIONVIEW.SAPClient = '100'
        and REGIONVIEW.CountryId = 'US';

// @title : 'Planned Margin Access Sequence view'
view PlannedMarginAccessSequenceView as
    select from CV.AccessSequenceView
    inner join  CV.RuleConditionView  on
            AccessSequenceView.RuleId      = RuleConditionView.RuleId
        and AccessSequenceView.EventTypeId = RuleConditionView.EventTypeId
        and AccessSequenceView.DimensionId = RuleConditionView.DimensionId
    {
        AccessSequenceView.AccessSequenceUuid,
        AccessSequenceView.RuleId,
        AccessSequenceView.Rule,
        AccessSequenceView.EventTypeId,
        AccessSequenceView.EventType,
        AccessSequenceView.DimensionId,
        AccessSequenceView.Dimension,
        AccessSequenceView.Priority,
        RuleConditionView.DistributionChannelId,
        RuleConditionView.SalesOrganizationId,
        RuleConditionView.DimensionValue,
        RuleConditionView.Value
    }
    where
            RuleConditionView.ValidFrom <= now()
        and RuleConditionView.ValidTo   >= now()
        and RuleConditionView.RuleId    =  '2003'
    order by
        AccessSequenceView.Priority;

};
