sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'customer/test/integration/FirstJourney',
		'customer/test/integration/pages/customersList',
		'customer/test/integration/pages/customersObjectPage'
    ],
    function(JourneyRunner, opaJourney, customersList, customersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('customer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecustomersList: customersList,
					onThecustomersObjectPage: customersObjectPage
                }
            },
            opaJourney.run
        );
    }
);