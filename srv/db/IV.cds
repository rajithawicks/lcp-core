using MultiChannelSale;
using MaterialSaleDate;
using InventoryVisibility;
using Material;
using MaterialGroup;
using RetailPrice;
using MerchandiseCategoryHierarchy;
using SalesOrganization;
using DistributionChannel;
using Region;
using CV;

context IV {
      /* const are not yet supported in CDS so that why we have to use values directly in where condition */
    // const SAP_CLIENT : String(3) = '100'; // temporary hardcoded
    // const COUNTRY_ID : String(3) = 'US';

    // view MaterialView as
    //     select from Material
    //     {
    //         Material.MaterialId             as MaterialId,
    //         Material.Material               as Material,
    //         Material.MaterialGroupId        as MaterialGroupId,
    //         Material.MaterialSeasonCategory as MaterialSeasonCategory
    //     }
    //     where
    //         Material.SAPClient = '100';

    // view MerchandiseCategoryHierarchyView as
    //     select from MerchandiseCategoryHierarchy
    //     {
    //         MerchandiseCategoryHierarchy.MaterialGroupId            as MaterialGroupId,
    //         MerchandiseCategoryHierarchy.MaterialGroupHierNode2Text as MaterialGroupHierNode2Text,
    //         MerchandiseCategoryHierarchy.MaterialGroupHierNode2Name as MaterialGroupHierNode2Name,
    //         MerchandiseCategoryHierarchy.MaterialGroupHierNode3Text as MaterialGroupHierNode3Text,
    //         MerchandiseCategoryHierarchy.MaterialGroupHierNode3Name as MaterialGroupHierNode3Name
    //     }
    //     where
    //         MerchandiseCategoryHierarchy.SAPClient = '100';

    // view InventoryVisibilityView as
    //     select from InventoryVisibility
    //     {
    //         InventoryVisibility.ProductId                                        as ProductId,
    //         InventoryVisibility.LocationId                                       as LocationId,
    //         InventoryVisibility.CurrentStock                                     as CurrentStock,
    //         InventoryVisibility.OnOrderStockQuantity                             as OnOrderStockQuantity,
    //         InventoryVisibility.CostPerStockUnit                                 as CostPerStockUnit,
    //         InventoryVisibility.CurrentStockValuatedAtCostValueInCompanyCurrency as CurrentStockValuatedAtCostValueInCompanyCurrency
    //     }
    //     where
    //         InventoryVisibility.SAPClient = '100';

    // view RetailPriceView as
    //     select from RetailPrice
    //     {
    //         RetailPrice.MaterialId            as MaterialId,
    //         RetailPrice.PlantId               as PlantId,
    //         RetailPrice.SalesOrganizationId   as SalesOrganizationId,
    //         RetailPrice.DistributionChannelId as DistributionChannelId,
    //         RetailPrice.RetailPrice           as RetailPrice,
    //         RetailPrice.CurrencyKey           as CurrencyKey,
    //         RetailPrice.UnitOfMeasureId       as UnitOfMeasureId
    //     }
    //     where
    //         RetailPrice.SAPClient = '100';

    // view MaterialSaleDateView as
    //     select from MaterialSaleDate
    //     {
    //         MaterialSaleDate.MaterialId            as MaterialId,
    //         MaterialSaleDate.SalesOrganizationId   as SalesOrganizationId,
    //         MaterialSaleDate.DistributionChannelId as DistributionChannelId,
    //         MaterialSaleDate.EarliestSaleDate      as EarliestSaleDate,
    //         MaterialSaleDate.LatestSaleDate        as LatestSaleDate
    //     }
    //     where
    //         MaterialSaleDate.SAPClient = '100';

    // view MultiChannelSaleView as
    //     select from MultiChannelSale 
    //     {
    //         MultiChannelSale.ProductId                               as ProductId,
    //         MultiChannelSale.LocationId                              as LocationId,
    //         MultiChannelSale.BaseUnit                                as BaseUnitOfMeasureId,
    //         sum(MultiChannelSale.FourWeekSalesQuantityInBaseUnit)    as FourWeekSalesQuantityInBaseUnit,
    //         sum(MultiChannelSale.FourWeekSalesQuantityInSalesUnit)   as FourWeekSalesQuantityInSalesUnit,
    //         sum(MultiChannelSale.SalesQuantityInBaseUnit)            as SalesQuantityInBaseUnit,
    //         sum(MultiChannelSale.SalesQuantityInSalesUnit)           as SalesQuantityInSalesUnit,
    //         sum(MultiChannelSale.FourWeekNetSalesAmount)             as FourWeekNetSalesAmount,
    //         sum(MultiChannelSale.NetSalesAmount)                     as NetSalesAmount,
    //         sum(MultiChannelSale.NetSalesAmount) - sum(MultiChannelSale.CostAmount_E) as GrossMargin,
    //         case
    //             when sum(MultiChannelSale.NetSalesAmount) > 0 then((sum(MultiChannelSale.NetSalesAmount) -sum(MultiChannelSale.CostAmount_E)) / sum(MultiChannelSale.NetSalesAmount)) * 100
    //             else                              0
    //         end                                     as GrossMarginPercent
    //     }
    //     where
    //         MultiChannelSale.SAPClient = '100'
    //     group by
    //         MultiChannelSale.ProductId,
    //         MultiChannelSale.LocationId,
    //         MultiChannelSale.BaseUnit;

    // view SalesOrganizationView as
    //     select from SalesOrganization distinct
    //     {
    //         SalesOrganization.SalesOrganizationId as SalesOrganizationId,
    //         SalesOrganization.SalesOrganization   as SalesOrganization
    //     }
    //     where
    //         SalesOrganization.SAPClient = '100';

    // view DistributionChannelView as
    //     select from DistributionChannel distinct
    //     {
    //         DistributionChannel.DistributionChannelId as DistributionChannelId,
    //         DistributionChannel.DistributionChannel   as DistributionChannel
    //     }
    //     where
    //         DistributionChannel.SAPClient = '100';

    // view RegionView as
    //     select from Region distinct
    //     {
    //         Region.RegionId as RegionId,
    //         Region.Region   as Region
    //     }
    //     where
    //             Region.SAPClient = '100'
    //         and Region.CountryId = 'US';

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