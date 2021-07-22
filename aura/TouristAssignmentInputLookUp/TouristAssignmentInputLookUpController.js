({
	handleClick : function(component, event, helper) {
		let selectedTourist = component.get("v.selectedTourist");
        let selectedTouristEvent = component.getEvent("selectedTouristEvent");
        selectedTouristEvent.setParams({ "selectedTourist": selectedTourist });
        selectedTouristEvent.fire();
	}
})