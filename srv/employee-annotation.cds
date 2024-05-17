using {nnrg} from './service';

annotate nnrg.employees with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : role
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
        {
            $Type : 'UI.DataField',
            Value : hireDate
        },
    ],  
);


annotate nnrg.employees with @(       
    UI.FieldGroup #employeesInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : role
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
        {
            $Type : 'UI.DataField',
            Value : hireDate
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'employeesInfoFacet',
            Label : 'employees Information',
            Target : '@UI.FieldGroup#employeesInformation',
        },
    ],    
);