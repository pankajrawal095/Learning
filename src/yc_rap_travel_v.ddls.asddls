@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view of Travel View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root  view entity YC_RAP_TRAVEL_V 
provider contract transactional_query
as projection on YI_Pankaj_tRAVEL
//as select from YI_Pankaj_tRAVEL // ZI_RAP_travel_V // as _travel
//association [1..*] to ZI_RAP_bookING_V as _booking on $projection.TravelUuid = _booking.TravelUUID
{
    key TravelUuid,
    TravelId,
    @ObjectModel.text.element: [ 'AgencyName' ]    
    AgencyId,
    _Agency.Name as AgencyName,
    CustomerId,
    BeginDate,
    EndDate,
     @Semantics.amount.currencyCode: 'CurrencyCode'    
    BookingFee,
     @Semantics.amount.currencyCode: 'CurrencyCode'  
    TotalPrice,
    CurrencyCode,
    Description,
//    TravelStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
//    _Agency,
    _Booking : redirected to composition child YC_RAP_BOOKING_V
//    _Currency,
//    _Customer
}
