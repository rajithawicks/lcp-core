//rajithaw
service CricingRulesEngineFunctionService {
    action GetUuid() returns ResultType;
}


type ResultType : {
    Uuid : String(32);
};
