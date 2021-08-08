(define (problem Truck_problem)
    
    (:domain Truck_domain)
    
    (:objects 
        location1
        location2
        location3
        location4
        location5
        container1
        container2
        container3
        container4
        container5
        container6
        truck1
        truck2
    )
    
    (:init
        (location location1)
        (location location2)
        (location location3)
        (location location4)
        (location location5)
        (container container1)
        (container container2)
        (container container3)
        (container container4)
        (container container5)
        (container container6)
        (trucks truck1)
        (trucks truck2)
        (at_truck truck1 location4)
        (at_truck truck2 location4)
        (at_container container1 location1)
        (at_container container2 location1)
        (at_container container3 location1)
        (at_container container4 location2)
        (at_container container5 location3)
        (at_container container6 location4)
        (fortyft container1)
        (fortyft container2)
        (twentyft container3)
        (twentyft container4)
        (twentyft container5)
        (twentyft container6)
        (free truck1)
        (free truck2)   
        (half_free1 truck1)
        (half_free2 truck1)
        (half_free1 truck2)
        (half_free2 truck2)
    )
    
    (:goal
        (and 
        (at_container container1 location5)
        (at_container container2 location5)
        (at_container container3 location5)
        (at_container container4 location5)
        (at_container container5 location5)
        (at_container container6 location5)
        )

    )
)