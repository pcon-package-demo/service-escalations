public with sharing class SelectByTierSelectorMethod extends AbstractSelectorMethodInjectable implements ISelectorMethodInjectable {
    public class Parameters implements ISelectorMethodParameterable {
        public Set<String> tierNameSet;
    }
    
    public List<SObject> selectQuery() {
        SelectByTierSelectorMethod.Parameters params = (SelectByTierSelectorMethod.Parameters)getParams();

        Set<String> tierNameSet = params.tierNameSet;

        return Database.query(newQueryFactory().setCondition(Case.escal_Tier__c + 'in :tierNameSet').toSOQL());
    }
}