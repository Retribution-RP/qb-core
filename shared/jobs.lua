QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 100
            },
        },
	},
    ['firefighter'] = {
		label = 'Firefighter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['1'] = {
                name = 'Recruit',
                payment = 125
            },
            ['2'] = {
                name = 'Firefighter',
                payment = 150
            },
			['3'] = {
                name = 'Shift Leader',
                payment = 175
            },
			['4'] = {
                name = 'Lieutenant',
                payment = 200
            },
            ['5'] = {
                name = 'Captain',
                payment = 250
            },
            ['6'] = {
                name = 'Asst. Chief',
                isboss = true,
                payment = 300
            },
			['7'] = {
                name = 'Chief',
				isboss = true,
                payment = 350
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['1'] = {
                name = 'Cadet',
                payment = 175
            },
			['2'] = {
                name = 'Officer',
                payment = 200
            },
			['3'] = {
                name = 'Officer II',
                payment = 225
            },
			['4'] = {
                name = 'Corporal',
                payment = 250
            },
            ['5'] = {
                name = 'Corporal',
                payment = 250
            },
            ['6'] = {
                name = 'Sergeant',
                payment = 275
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 300
            },
			['8'] = {
                name = 'Captain',
                payment = 325
            },
            ['9'] = {
                name = 'Commander',
                payment = 350
            },
			['10'] = {
                name = 'Asst. Chief',
                payment = 375
            },
			['11'] = {
                name = 'Chief',
                isboss = true,
                payment = 400
            },
			['12'] = {
                name = 'Commissioner',
				isboss = true,
                payment = 425
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['1'] = {
                name = 'Trainee',
                payment = 125
            },
            ['2'] = {
                name = 'EMT',
                payment = 150
            },
            ['3'] = {
                name = 'EMT Intermediate',
                payment = 100
            },
            ['4'] = {
                name = 'EMT Advanced',
                payment = 100
            },
			['5'] = {
                name = 'Paramedic',
                payment = 175
            },
            ['6'] = {
                name = 'Nurse',
                payment = 175
            },
			['7'] = {
                name = 'Doctor',
                payment = 250
            },
			['8'] = {
                name = 'Surgeon',
                payment = 275
            },
            ['9'] = {
                name = 'Lieutenant',
                payment = 300
            },
            ['10'] = {
                name = 'Captain',
                isboss = true,
                payment = 325
            },
			['11'] = {
                name = 'Chief',
				isboss = true,
                payment = 350
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['pdm'] = {
		label = 'Vehicle Dealer',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 175
            },
			['2'] = {
                name = 'Business Sales',
                payment = 200
            },
			['3'] = {
                name = 'Finance',
                payment = 225
            },
			['4'] = {
                name = 'Manager',
                payment = 250
            },
			['5'] = {
                name = 'Owner',
                payment = 275
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
    ['rapidrecovery'] = {
		label = 'Towing',
        type = "Towing",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Tow Operator',
                payment = 175
            },
			['1'] = {
                name = 'Tow Manager',
                payment = 200
            },
			['2'] = {
                name = 'Owner',
                payment = 225
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
    ['whitewidow'] = {
		label = 'White Widow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 125
            },
			['1'] = {
                name = 'Deliveries',
                payment = 135
            },
			['2'] = {
                name = 'Sales',
                payment = 150
            },
			['3'] = {
                name = 'Grower',
                payment = 175
            },
			['4'] = {
                name = 'Assistant Manager',
                payment = 200
            },
			['5'] = {
                name = 'Manager',
				isboss = true,
                payment = 225
            },
			['6'] = {
                name = 'Owner',
				isboss = true,
                payment = 300
            },
        },
	},
    ['pizzathis'] = {
		label = 'Pizza This',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit',
                      payment = 125 
            },
			['1'] = { name = 'Cook', payment = 135 },
			['2'] = { name = 'Pizza Expert', payment = 150 },
			['3'] = { name = 'Manager', payment = 200 },
			['4'] = { name = 'Owner', isboss = true, payment = 275 },
        },
	},
    ["gotur"] = {
        label = "Götür",
        defaultDuty = true,
        grades = {
            ['0'] = {
                    name = "Messenger",
                    payment = 0
                },
        ['1'] = {
                    name = "Manager",
            isboss = true,
                    payment = 0
                },
            },
    },
    ["ottos"] = {
        label = "ottos autos",
        defaultDuty = false,
        grades = {
            ['1'] = {
                name = 'Recruit',
                payment = 150
            },
            ['2'] = {
                name = 'Mechanic',
                payment = 175
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 250
            },
        },
    },
    ['uwu'] = {
		label = 'UwU Cat Cafe',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Novice',
                payment = 150
            },
			['1'] = {
                name = 'Employee',
                payment = 175
            },
			['2'] = {
                name = 'Experienced',
                payment = 200
            },
			['3'] = {
                name = 'Advanced',
                payment = 225
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
                payment = 250
            },
        },
	},
    ["lostrepair"] = {
        label = "Lost Repair",
        defaultDuty = false,
        grades = {
            ['1'] = {
                name = 'Recruit',
                payment = 150
            },
            ['2'] = {
                name = 'Mechanic',
                payment = 175
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 250
            },
        },
    },
    ['rea'] = {
        label = "Real estate agent",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Agent',
                payment = 200
            },
            ['2'] = {
                name = 'Manager',
                payment = 250
            },
            ['3'] = {
                name = 'Boss',
                payment = 300,
                isboss = true
            },
        },
    },
}
