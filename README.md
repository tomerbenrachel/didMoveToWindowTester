# didMoveToWindowTester
A simple application with several custom UIViews that illustrates when the delegate didMoveToWindow is called


## Background

In order for us to know when the didMoveToWindow is called and how it affects several views in a view hierarchy, we made this project.

The custom view is called **MyOwnView** and in the application, we have instantiated 3 instances of it on the main View Controller.

The developer has the option of adding them to the View Controller/each other in a fashion he/she sees fit to simulate the the scenario of a publisher adding IS's view container to their own view hierarchy.


## Scenarios Observed

- When **hiding** the view associated with the root View Controller and adding a custom view to it, didMoveToWindow is called upon attachment, but the custom view will be hidden as well

- When building a view hierarchy in a formation of 3 views, each attached to the former, creating a view hierarchy like so : 

	View Controller
	      |
   		View #1
   		  |   
        View #2
          |
   		View #3 

   	And hiding View #2, when didMoveToWindow is called for View #3, we will get the same results as the previous scenario

- When building a view hierarchy in a formation of 3 views like so :

   View Controller
		 |
	------------
	|	 	   |
View #1      View #2
			   |
			 View #3

  Where View #1 was added after View#2, when didMoveToWindow is called for View #3, we gather that nothing is hiding the view itself, even though View #1 is the one presented