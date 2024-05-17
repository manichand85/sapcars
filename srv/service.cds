using { com.mani.chand as db } from '../db/schema';

service nnrg{
    
    entity cars as projection on db.cars;
    entity customers as projection on db.customers;
    entity employees as projection on db.employees;
}

annotate nnrg.cars with @odata.draft.enabled;
annotate nnrg.customers with @odata.draft.enabled;
annotate nnrg.employees with @odata.draft.enabled;

