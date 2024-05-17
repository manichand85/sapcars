using {nnrg} from './service';

annotate nnrg.cars with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Make',
            Value : make
        },
        {
            $Type : 'UI.DataField',
            Value : model
        },
        {
            $Type : 'UI.DataField',
            Value : year
        },
        {
            $Type : 'UI.DataField',
            Value : color
        },
        {
            $Type : 'UI.DataField',
            Value : licensePlate
        },
        {
            $Type : 'UI.DataField',
            Value : owner
        },
       
    ],  
);


annotate nnrg.cars with @(       
    UI.FieldGroup #carsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Make',
            Value : make
        },
        {
            $Type : 'UI.DataField',
            Value : model
        },
        {
            $Type : 'UI.DataField',
            Value : year
        },
        {
            $Type : 'UI.DataField',
            Value : color
        },
        {
            $Type : 'UI.DataField',
            Value : licensePlate
        },
        {
            $Type : 'UI.DataField',
            Value : owner
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'carsInfoFacet',
            Label : 'cars Information',
            Target : '@UI.FieldGroup#carsInformation',
        },
    ],    
);