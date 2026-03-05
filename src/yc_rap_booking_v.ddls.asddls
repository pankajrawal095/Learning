@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Booking'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@ObjectModel.usageType: {
//                         serviceQuality: #X,
//                         sizeCategory: #S,
//                         dataClass: #MIXED }
define view entity YC_RAP_BOOKING_V 
as projection on YI_Pankaj_Booking
//as select from YI_Pankaj_Booking //ZI_RAP_bookING_V  //as _booking
//association [1..1] to ZI_RAP_travel_V as _travel on $projection.TravelUuid = _travel.TravelUUID 
{
    key BookingUuid,
    TravelUuid,
    BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
     @Semantics.amount.currencyCode: 'CurrencyCode'  
    FlightPrice,
    CurrencyCode,
    CreatedBy,
    LastChangedBy,
    LocalLastChangedAt,
    /* Associations */
//    _Carrier,
//    _Connection,
//    _Currency,
//    _Customer,
//    _Flight,
    _Travel : redirected to parent YC_RAP_TRAVEL_V
}
