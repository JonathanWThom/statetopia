event1 = Event.create({name: "Your biggest city hit by Hurricane Donald! Public emergency declared. City requesting help from Nation."})
event1.responses.create(description: "winning", capital_effect: -100, population_effect: 0, stability_effect: 0, resources_effect: -100, nation_id: 1)
event1.responses.create(description: "neutral", capital_effect: -50, population_effect: -250, stability_effect: -0.1, resources_effect: -50, nation_id: 1)
event1.responses.create(description: "losing", capital_effect: -10, population_effect: -1000, stability_effect: -0.3, resources_effect: 0, nation_id: 1)

event2 = Event.create({name: "Stock Market Crash. Panic reins supreme. Population worries about retirement resources."})
event2.responses.create(description: "winning", capital_effect: -100, population_effect: 0, stability_effect: 0, resources_effect: -100, nation_id: 1)
event2.responses.create(description: "neutral", capital_effect: -50, population_effect: -250, stability_effect: -0.1, resources_effect: -50, nation_id: 1)
event2.responses.create(description: "losing", capital_effect: -10, population_effect: -1000, stability_effect: -0.3, resources_effect: 0, nation_id: 1)

event3 = Event.create({name: "Scientist discover a disease cure for the Donald Trump Virus. Need funding for vaccine distribution."})
event3.responses.create(description: "winning", capital_effect: -100, population_effect: 0, stability_effect: 0, resources_effect: -100, nation_id: 1)
event3.responses.create(description: "neutral", capital_effect: -50, population_effect: -250, stability_effect: -0.1, resources_effect: -50, nation_id: 1)
event3.responses.create(description: "losing", capital_effect: -10, population_effect: -1000, stability_effect: -0.3, resources_effect: 0, nation_id: 1)

event4 = Event.create({name: "New rocket has gone over budget. Local company requests additional government support. Space travel to Mars inspires population."})
event4.responses.create(description: "winning", capital_effect: -100, population_effect: 0, stability_effect: 0, resources_effect: -100, nation_id: 1)
event4.responses.create(description: "neutral", capital_effect: -50, population_effect: -250, stability_effect: -0.1, resources_effect: -50, nation_id: 1)
event4.responses.create(description: "losing", capital_effect: -10, population_effect: -1000, stability_effect: -0.3, resources_effect: 0, nation_id: 1)
