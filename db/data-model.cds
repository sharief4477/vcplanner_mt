context cp {
    entity LOCATION {
        key LOCATION_ID    : String(4)      @title: 'Location ';
            LOCATION_DESC  : String(30)     @title: 'Location Description';
            LOCATION_TYPE  : String(1)      @title: 'Location Type';
            LATITUDE       : Decimal(10, 8) @title: 'Latitude';
            LONGITUTE      : Decimal(10, 8) @title: 'Longitude';
            RESERVE_FIELD1 : String(40)     @title: 'Reserve Field1';
            RESERVE_FIELD2 : String(40)     @title: 'Reserve Field2';
            RESERVE_FIELD3 : String(40)     @title: 'Reserve Field3';
            RESERVE_FIELD4 : String(40)     @title: 'Reserve Field4';
            RESERVE_FIELD5 : String(40)     @title: 'Reserve Field5';
            AUTH_GROUP     : String(4)      @title: 'Authorization Group';
    };

    // Customer group - Imported from ERP System(External System)
    entity CUSTOMERGROUP {
        key CUSTOMER_GROUP : String(20) @title: 'Customer Group';
            CUSTOMER_DESC  : String(20) @title: 'Customer Description';
            RESERVE_FIELD1 : String(40) @title: 'Reserve Field1';
            RESERVE_FIELD2 : String(40) @title: 'Reserve Field2';
            RESERVE_FIELD3 : String(40) @title: 'Reserve Field3';
            RESERVE_FIELD4 : String(40) @title: 'Reserve Field4';
            RESERVE_FIELD5 : String(40) @title: 'Reserve Field5';
            AUTH_GROUP     : String(4)  @title: 'Authorization Group';
    };

    // Products  - Imported from ERP System(External System)
    entity PRODUCT {
        key PRODUCT_ID       : String(40) @title: 'Configurable Product';
            PROD_DESC        : String(40) @title: 'Product Description';
            PROD_FAMILY      : String(30) @title: 'Product Family';
            PROD_GROUP       : String(30) @title: 'Product Group';
            PROD_MODEL       : String(30) @title: 'Product Model';
            PROD_MDLRANGE    : String(30) @title: 'Product Range';
            PROD_SERIES      : String(30) @title: 'Product Series';
            PROD_TYPE        : String(4)  @title: 'Product Type';
            RESERVE_FIELD1   : String(40) @title: 'Reserve Field1';
            RESERVE_FIELD2   : String(40) @title: 'Reserve Field2';
            RESERVE_FIELD3   : String(40) @title: 'Reserve Field3';
            RESERVE_FIELD4   : String(40) @title: 'Reserve Field4';
            RESERVE_FIELD5   : String(40) @title: 'Reserve Field5';
            AUTH_GROUP       : String(4)  @title: 'Authorization Group';
            NON_CONFIGURABLE : String(1)  @title: 'Non-Configurable Flag';
    };
}