using {
    V_MULTICHANNELSALEVIEW             as V_MULTICHANNELSALEVIEW,
    V_MATERIALSALEDATEVIEW             as V_MATERIALSALEDATEVIEW,
    V_INVENTORYVISIBILITYVIEW          as V_INVENTORYVISIBILITYVIEW,
    V_MATERIALVIEW                     as V_MATERIALVIEW,
    V_RETAILPRICEVIEW                  as V_RETAILPRICEVIEW,
    V_MERCHANDISECATEGORYHIERARCHYVIEW as V_MERCHANDISECATEGORYHIERARCHYVIEW,
    V_SALESORGANIZATIONVIEW            as V_SALESORGANIZATIONVIEW,
    V_DISTRIBUTIONCHANNELVIEW          as V_DISTRIBUTIONCHANNELVIEW,
    V_REGIONVIEW                       as V_REGIONVIEW

} from './CARVS';

using {
    MaterialGroup                      as MaterialGroup

} from './datamodel';

using {CV as CV} from './CV';

context IV {
    /* const are not yet supported in CDS so that why we have to use values directly in where condition */
    // const SAP_CLIENT : String(3) = '100'; // temporary hardcoded
    // const COUNTRY_ID : String(3) = 'US';

    view MaterialView as
        select from V_MATERIALVIEW {
            V_MATERIALVIEW.MaterialId             as MaterialId,
            V_MATERIALVIEW.Material               as Material,
            V_MATERIALVIEW.MaterialGroupId        as MaterialGroupId,
            V_MATERIALVIEW.MaterialSeasonCategory as MaterialSeasonCategory
        };
    // where
    //     V_MATERIALVIEW.SAPClient = '100';

    view MerchandiseCategoryHierarchyView as
        select from V_MERCHANDISECATEGORYHIERARCHYVIEW {
            V_MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupId            as MaterialGroupId,
            V_MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode2Text as MaterialGroupHierNode2Text,
            V_MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode2Name as MaterialGroupHierNode2Name,
            V_MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode3Text as MaterialGroupHierNode3Text,
            V_MERCHANDISECATEGORYHIERARCHYVIEW.MaterialGroupHierNode3Name as MaterialGroupHierNode3Name
        };
    // where
    //     V_MERCHANDISECATEGORYHIERARCHYVIEW.SAPClient = '100';

    view InventoryVisibilityView as
        select from V_INVENTORYVISIBILITYVIEW {
            V_INVENTORYVISIBILITYVIEW.ProductId                                        as ProductId,
            V_INVENTORYVISIBILITYVIEW.LocationId                                       as LocationId,
            V_INVENTORYVISIBILITYVIEW.CurrentStock                                     as CurrentStock,
            V_INVENTORYVISIBILITYVIEW.OnOrderStockQuantity                             as OnOrderStockQuantity,
            V_INVENTORYVISIBILITYVIEW.CostPerStockUnit                                 as CostPerStockUnit,
            V_INVENTORYVISIBILITYVIEW.CurrentStockValuatedAtCostValueInCompanyCurrency as CurrentStockValuatedAtCostValueInCompanyCurrency
        };
    // where
    //     V_INVENTORYVISIBILITYVIEW.SAPClient = '100';

    view RetailPriceView as
        select from V_RETAILPRICEVIEW {
            V_RETAILPRICEVIEW.MaterialId            as MaterialId,
            V_RETAILPRICEVIEW.PlantId               as PlantId,
            V_RETAILPRICEVIEW.SalesOrganizationId   as SalesOrganizationId,
            V_RETAILPRICEVIEW.DistributionChannelId as DistributionChannelId,
            V_RETAILPRICEVIEW.RetailPrice           as RetailPrice,
            V_RETAILPRICEVIEW.CurrencyKey           as CurrencyKey,
            V_RETAILPRICEVIEW.UnitOfMeasureId       as UnitOfMeasureId
        };
    // where
    //     V_RETAILPRICEVIEW.SAPClient = '100';

    view MaterialSaleDateView as
        select from V_MATERIALSALEDATEVIEW {
            V_MATERIALSALEDATEVIEW.MaterialId            as MaterialId,
            V_MATERIALSALEDATEVIEW.SalesOrganizationId   as SalesOrganizationId,
            V_MATERIALSALEDATEVIEW.DistributionChannelId as DistributionChannelId,
            V_MATERIALSALEDATEVIEW.EarliestSaleDate      as EarliestSaleDate,
            V_MATERIALSALEDATEVIEW.LatestSaleDate        as LatestSaleDate
        };
    // where
    //     V_MATERIALSALEDATEVIEW.SAPClient = '100';

    view MultiChannelSaleView as
        select from V_MULTICHANNELSALEVIEW {
            V_MULTICHANNELSALEVIEW.ProductId                        as ProductId,
            V_MULTICHANNELSALEVIEW.LocationId                       as LocationId,
            V_MULTICHANNELSALEVIEW.BaseUnitOfMeasureId              as BaseUnitOfMeasureId,
            V_MULTICHANNELSALEVIEW.FourWeekSalesQuantityInBaseUnit  as FourWeekSalesQuantityInBaseUnit,
            V_MULTICHANNELSALEVIEW.FourWeekSalesQuantityInSalesUnit as FourWeekSalesQuantityInSalesUnit,
            V_MULTICHANNELSALEVIEW.SalesQuantityInBaseUnit          as SalesQuantityInBaseUnit,
            V_MULTICHANNELSALEVIEW.SalesQuantityInSalesUnit         as SalesQuantityInSalesUnit,
            V_MULTICHANNELSALEVIEW.FourWeekNetSalesAmount           as FourWeekNetSalesAmount,
            V_MULTICHANNELSALEVIEW.NetSalesAmount                   as NetSalesAmount,
            V_MULTICHANNELSALEVIEW.GrossMargin                      as GrossMargin,
            V_MULTICHANNELSALEVIEW.GrossMarginPercent               as GrossMarginPercent
        // sum(V_MULTICHANNELSALEVIEW.NetSalesAmount) - sum(V_MULTICHANNELSALEVIEW.CostAmount_E) as GrossMargin,
        // case
        //     when sum(V_MULTICHANNELSALEVIEW.NetSalesAmount) > 0 then((sum(V_MULTICHANNELSALEVIEW.NetSalesAmount) -sum(V_MULTICHANNELSALEVIEW.CostAmount_E)) / sum(V_MULTICHANNELSALEVIEW.NetSalesAmount)) * 100
        //     else                              0
        // end                                     as GrossMarginPercent
        };
    // where
    //     V_MULTICHANNELSALEVIEW.SAPClient = '100'
    // group by
    //     V_MULTICHANNELSALEVIEW.ProductId,
    //     V_MULTICHANNELSALEVIEW.LocationId,
    //     V_MULTICHANNELSALEVIEW.BaseUnit;

    view SalesOrganizationView as
        select from V_SALESORGANIZATIONVIEW distinct {
            V_SALESORGANIZATIONVIEW.SalesOrganizationId as SalesOrganizationId,
            V_SALESORGANIZATIONVIEW.SalesOrganization   as SalesOrganization
        };
// where
//     V_SALESORGANIZATIONVIEW.SAPClient = '100';

view DistributionChannelView as
    select from V_DISTRIBUTIONCHANNELVIEW distinct
    {
        V_DISTRIBUTIONCHANNELVIEW.DISTRIBUTIONCHANNELID as DistributionChannelId,
        V_DISTRIBUTIONCHANNELVIEW.DISTRIBUTIONCHANNEL   as DistributionChannel
    };
    // where
    //     V_DISTRIBUTIONCHANNELVIEW.SAPCLIENT = '100';

view RegionView as
    select from V_REGIONVIEW distinct
    {
        V_REGIONVIEW.RegionId as RegionId,
        V_REGIONVIEW.Region   as Region
    };
    // where
    //         V_REGIONVIEW.SAPClient = '100'
    //     and V_REGIONVIEW.CountryId = 'US';

// @title : 'Planned Margin Access Sequence view'
// view PlannedMarginAccessSequenceView as
//     select from CV.AccessSequenceView
//     inner join  CV.RuleConditionView  on
//             AccessSequenceView.RuleId      = RuleConditionView.RuleId
//         and AccessSequenceView.EventTypeId = RuleConditionView.EventTypeId
//         and AccessSequenceView.DimensionId = RuleConditionView.DimensionId
//     {
//         AccessSequenceView.AccessSequenceUuid,
//         AccessSequenceView.RuleId,
//         AccessSequenceView.Rule,
//         AccessSequenceView.EventTypeId,
//         AccessSequenceView.EventType,
//         AccessSequenceView.DimensionId,
//         AccessSequenceView.Dimension,
//         AccessSequenceView.Priority,
//         RuleConditionView.DistributionChannelId,
//         RuleConditionView.SalesOrganizationId,
//         RuleConditionView.DimensionValue,
//         RuleConditionView.Value
//     }
//     where
//             RuleConditionView.ValidFrom <= now()
//         and RuleConditionView.ValidTo   >= now()
//         and RuleConditionView.RuleId    =  '2003'
//     order by
//         AccessSequenceView.Priority;

};
