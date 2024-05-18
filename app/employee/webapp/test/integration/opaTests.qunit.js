sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'employee/test/integration/FirstJourney',
		'employee/test/integration/pages/employeesList',
		'employee/test/integration/pages/employeesObjectPage'
    ],
    function(JourneyRunner, opaJourney, employeesList, employeesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('employee') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheemployeesList: employeesList,
					onTheemployeesObjectPage: employeesObjectPage
                }
            },
            opaJourney.run
        );
    }
);