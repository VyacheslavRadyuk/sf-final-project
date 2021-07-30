public class PriceListOfTripsController {
    public static final String parameterId = 'Id';
    public String tourist;
    public List<Trip__c> trips{get;set;}
    public List<PriceBookEntry> prices{get;set;}
    
    public PriceListOfTripsController(ApexPages.StandardController stdController) {  
        this.tourist = ApexPages.CurrentPage().getparameters().get(parameterId);
        this.trips = TouristAssignmentController.getTrips(tourist); 
        this.trips.sort();
        List<String> tripNames = new List<String>(); 
        
        for (Trip__c trip : trips) {
            tripNames.add(trip.Name);
        }
        
        prices = PriceBookEntryManager.getPriceBookEntryByTripNames(tripNames);
    }
}