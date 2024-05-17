using {nnrg} from './service';

annotate nnrg.customers with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : address
        },
        {
            $Type : 'UI.DataField',
            Value : phone
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
    ],  
);


annotate nnrg.customers with @(       
    UI.FieldGroup #customersInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : address
        },
        {
            $Type : 'UI.DataField',
            Value : phone
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'customersInfoFacet',
            Label : 'customers Information',
            Target : '@UI.FieldGroup#customersInformation',
        },
    ],    
);