//rajithaw
//contains all the car virtual table related view definitions

@cds.persistence.exists
entity V_MULTICHANNELSALEVIEW {

    ProductId                        : String(40);
    LocationId                       : String(4);
    BaseUnitOfMeasureId              : String(3);
    FourWeekSalesQuantityInBaseUnit  : Decimal(26, 6);
    FourWeekSalesQuantityInSalesUnit : Decimal(26, 6);
    SalesQuantityInBaseUnit          : Decimal(26, 6);
    SalesQuantityInSalesUnit         : Decimal(26, 6);
    FourWeekNetSalesAmount           : Decimal(26, 6);
    NetSalesAmount                   : Decimal(26, 6);
    GrossMargin                      : Decimal(26, 6);
    GrossMarginPercent               : Decimal(26, 6);
}

@cds.persistence.exists
entity V_MATERIALSALEDATEVIEW {

    MaterialId            : String(40);
    SalesOrganizationId   : String(4);
    DistributionChannelId : String(2);
    EarliestSaleDate      : String(8);
    LatestSaleDate        : String(8);
}

@cds.persistence.exists
entity V_INVENTORYVISIBILITYVIEW {
    ProductId                                        : String(40);
    LocationId                                       : String(4);
    CurrentStock                                     : Decimal(13, 3);
    OnOrderStockQuantity                             : Decimal(13, 3);
    CostPerStockUnit                                 : Double;
    CurrentStockValuatedAtCostValueInCompanyCurrency : Decimal(13, 3);
}


@cds.persistence.exists
entity V_MATERIALVIEW {

    MaterialId             : String(40);
    Material               : String(40);
    MaterialGroupId        : String(2);
    MaterialSeasonCategory : String(4);

}

@cds.persistence.exists
entity V_RETAILPRICEVIEW {
    MaterialId            : String(40);
    PlantId               : String(4);
    SalesOrganizationId   : String(20);
    DistributionChannelId : String(20);
    RetailPrice           : Decimal(19, 5);
    CurrencyKey           : String(5);
    UnitOfMeasureId       : String(3);
}

@cds.persistence.exists
entity V_MERCHANDISECATEGORYHIERARCHYVIEW {

    MaterialGroupId            : String(18);
    MaterialGroupHierNode2Text : String(40);
    MaterialGroupHierNode2Name : String(18);
    MaterialGroupHierNode3Text : String(40);
    MaterialGroupHierNode3Name : String(18);

}

@cds.persistence.exists
entity V_SALESORGANIZATIONVIEW {

    SalesOrganizationId : String(4);
    SalesOrganization   : String(20);
}

@cds.persistence.exists
entity V_DISTRIBUTIONCHANNELVIEW {
   
    DISTRIBUTIONCHANNELID : String(2);
    DISTRIBUTIONCHANNEL   : String(20);
}

@cds.persistence.exists
entity V_REGIONVIEW {

    RegionId  : String(3);
    Region    : String(20);
}