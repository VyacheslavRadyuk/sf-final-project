public class PriceBookEntryManager {

    public static List<PriceBookEntry> getPriceBookEntryByTripNames(List<String> tripNames){    
        if(tripNames == null || tripNames.isEmpty()) {
            return new List<PriceBookEntry>();
        }
        
        List<PriceBookEntry> prices = [
            SELECT Name,
            UnitPrice
            FROM PriceBookEntry
            WHERE Name IN : tripNames
            ORDER BY Name
        ];
        return prices; 
    }   
}