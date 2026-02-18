
using cp as od from '../db/data-model';
service CatalogService @(impl: './lib/cat-service.js') {

     entity getLocation              as projection on od.LOCATION;
     entity getCustgroup              as projection on od.CUSTOMERGROUP;
     entity getProducts              as projection on od.PRODUCT;

     function getLocationData() returns String;
}