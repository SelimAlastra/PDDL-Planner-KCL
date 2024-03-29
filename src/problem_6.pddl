(define (problem problem_6)
    (:domain vaccine-delivery)
    ; Hospital rooms problem file
    (:objects
        n1 n2 - nurse
        startLocation hall room1 room2 room3 room4 room5 room6 pickUpLocation - location
        p1 p2 p3 p4 p5 - person
    )
    (:init
        (vaccineOld n1)
        (vaccineYoung n2)

        (notVaccinated p1)
        (not (vaccinated p1))
        (notVaccinated p2)
        (not (vaccinated p2))
        (notVaccinated p3)
        (not (vaccinated p3))
        (notVaccinated p4)
        (not (vaccinated p4))
        (notVaccinated p5)
        (not (vaccinated p5))

        (not (carryingVaccine n1))
        (notCarryingVaccine n1)

        (not (carryingVaccine n2))
        (notCarryingVaccine n2)

        (isPickUpLocation pickUpLocation)

        (at n1 startLocation)
        (at n2 startLocation)

        (atPerson p1 room2)
        (atPerson p2 room5)
        (atPerson p3 room3)
        (atPerson p4 room6)
        (atPerson p5 room1)

        (connected pickUpLocation startLocation)
        (connected startLocation pickUpLocation)
        (connected startLocation hall)
        (connected hall startLocation)
        (connected hall room1)
        (connected room1 hall)
        (connected hall room2)
        (connected room2 hall)
        (connected hall room3)
        (connected room3 hall)
        (connected hall room4)
        (connected room4 hall)
        (connected hall room5)
        (connected room5 hall)
        (connected hall room6)
        (connected room6 hall)

        (not (under60 p1))
        (over60 p1)
        (not (under60 p2))
        (over60 p2)
        (not (under60 p3))
        (over60 p3)
        (not (over60 p4))
        (under60 p4)
        (not (over60 p5))
        (under60 p5)
    )

    (:goal
        (and
            (at n1 startLocation)
            (at n2 startLocation)
            (vaccinated p1)
            (vaccinated p2)
            (vaccinated p3)
            (vaccinated p4)
            (vaccinated p5)
        )
    )
)