(define (domain Truck_domain)

    (:requirements :strips)

    (:predicates
        (location ?l)
        (container ?c)
        (trucks ?t)
        (at_truck ?t ?l)
        (at_container ?c ?l)
        (twentyft ?c)
        (fortyft ?c)
        (free ?t)
        (half_free1 ?t)
        (half_free2 ?t)
        (carrying ?c)
        
    
    )


  (:action Move
        :parameters (?from ?to ?t) 
        :precondition (and (location ?from) (location ?to) (trucks ?t) (at_truck ?t ?from))
        :effect (and (at_truck ?t ?to)  (not(at_truck ?t ?from)))
    )
    
    (:action Load_40ft
        :parameters (?t ?l ?c ?from)
        :precondition (and (fortyft ?c) (at_truck ?t ?from) (trucks ?t) (container ?c) (at_container ?c ?l) (free ?t) (location ?l)        )
        :effect (and (carrying ?c) (not (free ?t)) (not (at_container ?c ?l)))
    )
    
    (:action Unload_40ft
        :parameters (?t ?l ?c ?to) 
        :precondition (and (trucks ?t) (at_truck ?t ?to) (container ?c) (location ?l) (fortyft ?c) (carrying ?c)             )
        :effect (and (at_container ?c ?l) (free ?t)     (not(carrying ?c))       )
    )
    
       (:action Load_20ft
        :parameters ( ?t ?l ?c ?from)
        :precondition (and  (twentyft ?c) (at_truck ?t ?from) (trucks ?t) (container ?c) (at_container ?c ?l) (half_free1 ?t) (half_free2 ?t) (location ?l)                               )
        :effect (and (not (half_free1 ?t))  (not(half_free2 ?t))  (not(at_container ?c ?l))  (carrying ?c)                                            )
    )
    
    (:action Unload_20ft
        :parameters ( ?t ?l ?c ?to)
        :precondition (and  (twentyft ?c) (at_truck ?t ?to) (trucks ?t) (container ?c) (carrying ?c) (location ?l) (carrying ?c)                                                    )
        :effect (and (half_free1 ?t) (half_free2 ?t) (at_container ?c ?l) (not (carrying ?c))                                                                )
    )
    

)