@cds.persistence.exists
@cds.persistence.calcview
entity CD_DISTRIBUTION_CHANNEL {
    SAPClient             : String(40);
    DistributionChannelId : String(40);
    DistributionChannel   : String(40);
}

@cds.persistence.exists
@cds.persistence.calcview
entity CD_SALES_ORGANIZATION {
    SalesOrganizationId : String(40);
    SalesOrganization   : String(40);
    SAPClient           : String(40);
}

@cds.persistence.exists
entity MultiChannelSale {
    SAPClient                            : String(3);
    SaleDate                             : String(8);
    OrderChannelId                       : String(2);
    ProductId                            : String(40);
    MaterialGroupId                      : String(20);
    LocationId                           : String(4);
    Promotion                            : String(10);
    EuropeanArticleNumber                : String(18);
    CustomerNumber                       : String(32);
    TransactionCurrency                  : String(5);
    HasDiscount                          : String(40);
    HasPromotion                         : String(40);
    IsSale                               : String(40);
    IsReturn                             : String(40);
    SalesUnit                            : String(3);
    BaseUnit                             : String(3);
    WeekOfYear                           : String(40);
    SalesQuantityInSalesUnit             : Decimal(26, 6);
    SalesQuantityInBaseUnit              : Decimal(26, 6);
    RetailSalesAmount                    : Decimal(26, 6);
    NetSalesAmount                       : Decimal(26, 6);
    ReturnsAmount                        : Decimal(26, 6);
    NetReturnsAmount                     : Decimal(26, 6);
    ReturnsQuantityInSalesUnit           : Decimal(26, 6);
    ReturnsQuantityInBaseUnit            : Decimal(26, 6);
    NumberOfSalesItems                   : String(40);
    NumberOfReturnItems                  : String(40);
    NumberOfPromotionItems               : String(40);
    DiscountAmount                       : Decimal(26, 6);
    CostAmount_E                         : Decimal(26, 6);
    PromotionNetSalesAmount              : Decimal(26, 6);
    PromotionSalesAmount                 : Decimal(26, 6);
    ReturnsCostAmount                    : Decimal(26, 6);
    NormalSalesAmount                    : Decimal(26, 6);
    GrossMargin                          : Decimal(26, 6);
    GrossMarginPercent                   : Decimal(26, 6);
    FourWeekGrossMargin                  : Decimal(26, 6);
    FourWeekGrossMarginPercent           : Decimal(26, 6);
    TwelveWeekGrossMargin                : Decimal(26, 6);
    TwelveWeekGrossMarginPercent         : Decimal(26, 6);
    NumberOfTransactions                 : String(40);
    FourWeekSalesQuantityInSalesUnit     : Decimal(26, 6);
    FourWeekSalesQuantityInBaseUnit      : Decimal(26, 6);
    FourWeekRetailSalesAmount            : Decimal(26, 6);
    FourWeekNetSalesAmount               : Decimal(26, 6);
    FourWeekReturnsAmount                : Decimal(26, 6);
    FourWeekNetReturnsAmount             : Decimal(26, 6);
    FourWeekReturnsQuantityInSalesUnit   : Decimal(26, 6);
    FourWeekReturnsQuantityInBaseUnit    : Decimal(26, 6);
    FourWeekNumberOfSalesItems           : String(40);
    FourWeekNumberOfReturnItems          : String(40);
    FourWeekNumberOfPromotionItems       : String(40);
    FourWeekDiscountAmount               : Decimal(26, 6);
    FourWeekNormalSalesAmount            : Decimal(26, 6);
    FourWeekCostAmount                   : Decimal(26, 6);
    FourWeekPromotionNetSalesAmount      : Decimal(26, 6);
    FourWeekPromotionSalesAmount         : Decimal(26, 6);
    FourWeekReturnsCostAmount            : Decimal(26, 6);
    TwelveWeekSalesQuantityInSalesUnit   : Decimal(26, 6);
    TwelveWeekSalesQuantityInBaseUnit    : Decimal(26, 6);
    TwelveWeekRetailSalesAmount          : Decimal(26, 6);
    TwelveWeekNetSalesAmount             : Decimal(26, 6);
    TwelveWeekReturnsAmount              : Decimal(26, 6);
    TwelveWeekNetReturnsAmount           : Decimal(26, 6);
    TwelveWeekReturnsQuantityInSalesUnit : Decimal(26, 6);
    TwelveWeekReturnsQuantityInBaseUnit  : Decimal(26, 6);
    TwelveWeekNumberOfSalesItems         : String(40);
    TwelveWeekNumberOfReturnItems        : String(40);
    TwelveWeekNumberOfPromotionItems     : String(40);
    TwelveWeekDiscountAmount             : Decimal(26, 6);
    TwelveWeekNormalSalesAmount          : Decimal(26, 6);
    TwelveWeekCostAmount                 : Decimal(26, 6);
    TwelveWeekPromotionNetSalesAmount    : Decimal(26, 6);
    TwelveWeekPromotionSalesAmount       : Decimal(26, 6);
    TwelveWeekReturnsCostAmount          : Decimal(26, 6);
}

@cds.persistence.exists
entity MaterialSaleDate {
    SAPClient             : String(3);
    MaterialId            : String(40);
    SalesOrganizationId   : String(4);
    SalesOrganization     : String(20);
    DistributionChannelId : String(2);
    DistributionChannel   : String(20);
    EarliestSaleDate      : String(8);
    LatestSaleDate        : String(8);
}

@cds.persistence.exists
entity InventoryVisibility {
    SAPClient                                                  : String(3);
    LocationId                                                 : String(4);
    ProductId                                                  : String(40);
    UnrestrictedUseStockQuantity                               : Decimal(23, 3);
    InTransitStockQuantity                                     : Decimal(23, 3);
    InTransferStockQuantity                                    : Decimal(23, 3);
    TotalValuatedStockQuantity                                 : Decimal(23, 3);
    TotalValuatedAtCostStockValueInCompanyCurrency             : Decimal(23, 3);
    TotalValuatedAtRetailStockValueInCompanyCurrency           : Decimal(23, 3);
    ProductSafetyStockQuantity                                 : Decimal(23, 3);
    ProductMaximumStockLevelQuantity                           : Decimal(23, 3);
    ArticleMinimumSafetyStockQuantity                          : Decimal(23, 3);
    UnrestrictedUseVendorConsignmentStockQuantity              : Decimal(23, 3);
    CostPerStockUnit                                           : Double;
    SalesValuePerStockUnit                                     : Double;
    UnrestrictedUseValuatedAtCostStockValueInCompanyCurrency   : Decimal(23, 3);
    InTransitValuatedAtCostStockValueInCompanyCurrency         : Decimal(23, 3);
    InTransferValuatedAtCostStockValueInCompanyCurrency        : Decimal(23, 3);
    CurrentStockValuatedAtCostValueInCompanyCurrency           : Decimal(23, 3);
    CurrentStock                                               : Decimal(23, 3);
    UnrestrictedUseValuatedAtRetailStockValueInCompanyCurrency : Decimal(23, 3);
    InTransitValuatedAtRetailStockValueInCompanyCurrency       : Decimal(23, 3);
    InTransferValuatedAtRetailStockValueInCompanyCurrency      : Decimal(23, 3);
    CurrentStockValuatedAtRetailValueInCompanyCurrency         : Decimal(23, 3);
    UnprocessedSalesQuantity                                   : Decimal(23, 3);
    CurrentStockQuantityWithVendorConsignmentStock             : Decimal(23, 3);
    OnOrderStockQuantity                                       : Decimal(23, 3);
    OnOrderValuatedAtCostStockValueInCompanyCurrency           : Decimal(23, 3);
    ScheduledStockQuantity                                     : Decimal(23, 3);
    ScheduledValuatedAtCostStockValueInCompanyCurrency         : Decimal(23, 3);
}

@cds.persistence.exists
entity Material {
    SAPClient                           : String(3);
    MaterialId                          : String(40);
    Material                            : String(40);
    BasicMaterial                       : String(48);
    MaterialTypeId                      : String(4);
    MaterialType                        : String(25);
    MaterialGroupId                     : String(9);
    MaterialGroup                       : String(20);
    MaterialCategoryId                  : String(2);
    MaterialCategory                    : String(60);
    MaterialBaseUnitOfMeasureId         : String(3);
    MaterialBaseUnitOfMeasure_E         : String(3);
    MaterialBaseUnitOfMeasureLongName   : String(30);
    MaterialIsMarkedForDeletion         : String(1);
    MaterialGrossWeight                 : Decimal(13, 3);
    MaterialNetWeight                   : Decimal(13, 3);
    MaterialWeightUnitOfMeasureId       : String(3);
    MaterialWeightUnitOfMeasure_E       : String(3);
    MaterialWeightUnitOfMeasureLongName : String(30);
    IndustrySector                      : String(1);
    MaterialIsCrossPlantConfigbl        : String(40);
    DivisionId                          : String(2);
    ProductionOrInspectionMemoText      : String(18);
    MaterialSizeOrDimensionDescription  : String(32);
    IndustryStandardName                : String(18);
    LaboratoryOrDesignOffice            : String(3);
    MaterialIsBatchManaged              : String(1);
    MaterialIsConfigurable              : String(1);
    MaterialAuthorizationGroup          : String(4);
    MaterialOldId                       : String(40);
    ProductHierarchy                    : String(18);
    MaterialExternalGroup               : String(18);
    MaterialSeasonCategory              : String(4);
    MaterialSeasonYear                  : String(4);
    RetailArticleColor                  : String(18);
    RetailArticleMainSize               : String(18);
    RetailArticleBrand                  : String(4);
    RetailArticleFashionGrade           : String(4);
    RetailCharacteristicColor           : String(10);
    RetailCharacteristicMainSize        : String(10);
    RetailCharacteristicSecondSize      : String(10);
    RetailArticleSecondSize             : String(18);
    ContentsUnitOfMeasureId             : String(3);
    MaterialNetContents                 : Decimal(13, 3);
    MaterialGrossContents               : Decimal(13, 3);
    ContentsUnitOfMeasure_E             : String(3);
    ContentsUnitOfMeasureLongName       : String(30);
    PricingReferenceMaterial            : String(40);
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

@cds.persistence.exists
entity RetailPrice {
    SAPClient             : String(3);
    MaterialId            : String(40);
    PlantId               : String(4);
    SalesOrganizationId   : String(20);
    DistributionChannelId : String(20);
    UnitOfMeasureId       : String(3);
    RetailPrice           : Decimal(19, 5);
    ValueAddedTaxFraction : Decimal(19, 5);
    CurrencyKey           : String(5);
    ValidFrom             : Decimal(19, 5);
    ValidTo               : Decimal(19, 5);
    PriceListDescription  : String(60);
    RetailType            : String(60);
    PriceType             : String(60);
    RetailPriceNet        : Decimal(19, 5);
}

@cds.persistence.exists
entity MerchandiseCategoryHierarchy {
    SAPClient                  : String(3);
    RootNodeName               : String(18);
    MaterialGroupHierNode0Name : String(18);
    MaterialGroupHierNode0Text : String(40);
    MaterialGroupHierNode1Name : String(18);
    MaterialGroupHierNode1Text : String(40);
    MaterialGroupHierNode2Name : String(18);
    MaterialGroupHierNode2Text : String(40);
    MaterialGroupHierNode3Name : String(18);
    MaterialGroupHierNode3Text : String(40);
    MaterialGroupHierNode4Name : String(18);
    MaterialGroupHierNode4Text : String(40);
    MaterialGroupId            : String(18);
}

@cds.persistence.exists
entity SalesOrganization {
    SAPClient                    : String(3);
    SalesOrganizationId          : String(4);
    SalesOrganization            : String(20);
    SalesOrganizationCurrencyKey : String(5);
    CompanyCodeId                : String(4);
    CompanyCode                  : String(25);
    CustomerId                   : String(10);
    CountryId                    : String(3);
    CompanyCodeCurrencyKey       : String(5);
    FiscalYearVariant            : String(2);
}

@cds.persistence.exists
entity DistributionChannel {
    SAPClient             : String(3);
    DistributionChannelId : String(2);
    DistributionChannel   : String(20);
}

@cds.persistence.exists
entity Region {
    SAPClient : String(3);
    CountryId : String(3);
    RegionId  : String(3);
    Region    : String(20);
}
