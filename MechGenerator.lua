forge.clear()

-- generate random foot configurations

randomFeetGuard = { "Mech/foot_top","Mech/foot_topp","Mech/foot_topAngle","Mech/foot_topShield"}
FeetGuard = randomFeetGuard[math.random(#randomFeetGuard)];

randomAnkleJoint = { "Mech/socket_double","Mech/socket_hexagon","Mech/socket_medium","Mech/socket_small"}
AnkleJoint = randomAnkleJoint[math.random(#randomAnkleJoint)];

randomFeet = { "Mech/foot_claw","Mech/foot_default","Mech/foot_double","Mech/foot_doubleWide","Mech/foot_ski","Mech/foot_skiLow","Mech/foot_thin"}--,"Mech/foot_top","Mech/foot_topAngle","Mech/foot_topShield"}
Feet = randomFeet[math.random(#randomFeet)];

spacing = .35

forge.build(Feet,{-1*spacing,0,0},{0,0,0},{1,1,1})
forge.build(Feet,{spacing,0,0},{0,0,0},{1,1,1})

forge.build(AnkleJoint,{-1*spacing,.3,0},{0,0,0},{-1,1,1})
forge.build(AnkleJoint,{spacing,.3,0},{0,0,0},{1,1,1})

forge.build(FeetGuard,{-1*spacing,.6,.14},{90,0,0},{1,.6,1})
forge.build(FeetGuard,{spacing,.6,.14},{90,0,0},{1,.6,1})

-- generate random leg configurations
randomLeg = { "Mech/leg_cover","Mech/leg_default","Mech/leg_double","Mech/leg_padding","Mech/leg_painted","Mech/leg_pipes","Mech/leg_shield","Mech/leg_sides","Mech/leg_thin","Mech/leg_upper"}

Leg = randomLeg[math.random(#randomLeg)];

forge.build(Leg,{-1*spacing,.3,0},{0,0,0},{1,1,1})
forge.build(Leg,{spacing,.3,0},{0,0,0},{-1,1,1})

randomHip = { "Mech/pelvis_joint","Mech/pelvis_jointRound","Mech/pelvis_jointSlant"}--,"Mech/pelvis_Shield","Mech/pelvis_square"}
Hip = randomHip[math.random(#randomHip)];

forge.build(Hip,{-1*spacing,1,0},{0,0,0},{.9,.9,1})
forge.build(Hip,{1*spacing,1,0},{0,0,0},{-.9,.9,1})

-- create a knee joint. ankle joint doubles as a knee joint
forge.build(AnkleJoint,{-1*spacing,1,0},{0,0,0},{-.9,1,1})
forge.build(AnkleJoint,{spacing,1,0},{0,0,0},{.9,1,1})

-- create a knee guard. this will use Blaster blocks.
randomKneeGuard = {"Blasters/blaster_back","Blasters/largeBlaster_back","Blasters/mediumBlaster_back"} 
KneeGuard= randomKneeGuard[math.random(#randomKneeGuard)];

forge.build(KneeGuard,{-1*spacing,0,.65},{0,0,0},{-.7,1.2,-1.3})
forge.build(KneeGuard,{spacing,0,.65},{0,0,0},{.7,1.2,-1.3})

-- generate random waist configurations
randomWaist = { "Mech/pelvis_belt","Mech/pelvis_shield","Mech/pelvis_square"}
Waist = randomWaist[math.random(#randomWaist)];

forge.build(Waist,{0,1.3,0},{0,0,0},{1,1,1})

-- generate random torso configs
randomTorso = { "Mech/chest_body","Mech/chest_humanoid","Mech/chest_shoulders"}
Torso = randomTorso[math.random(#randomTorso)];

flip_torso = {-1,1}
flipped_torso = flip_torso[math.random(#flip_torso)];

forge.build(Torso,{0,1.65,0},{0,0,0},{.9,.65,flipped_torso})

-- generate random head configs
randomHead = { "Mech/head_classic","Mech/head_knight","Mech/head_marine"}
Head = randomHead[math.random(#randomHead)];

forge.build(Head,{0,2.30,0},{0,0,0},{1.1,1.1,1.1})
forge.build("Ships/detail_tire",{0,2.2,0},{0,0,0},{1,1,1})

-- generate random shoulder configurations
randomShoulder = { "Mech/shoulder_angle","Mech/shoulder_default","Mech/shoulder_skew",}

Shoulder = randomShoulder[math.random(#randomShoulder)];
shoulder_spacing = .78
forge.build(Shoulder,{-1*shoulder_spacing,2.1,0},{0,0,0},{.75,.75,.75})
forge.build(Shoulder,{shoulder_spacing,2.1,0},{0,0,0},{-.75,.75,.75})

-- create a shoulder joint. ankle joint doubles as a shoulder joint
--forge.build(AnkleJoint,{-1*spacing,2.2,0},{0,0,0},{-.9,1,1})
--forge.build(AnkleJoint,{spacing,2.2,0},{0,0,0},{.9,1,1})

-- arms will follow the leg configurations
Arm = randomHip[math.random(#randomHip)];

forge.build(Arm,{-.85*shoulder_spacing,1.9,0},{0,0,-15},{.7,.8,.8})
forge.build(Arm,{.85*shoulder_spacing,1.9,0},{0,0,15},{-.7,.8,.8})

Forearm = randomLeg[math.random(#randomLeg)];

forge.build(Forearm,{-1.02*shoulder_spacing,1.42,0},{0,0,-15},{.8,.8,.8})
forge.build(Forearm,{1.02*shoulder_spacing,1.42,0},{0,0,15},{-.8,.8,.8})

-- generate hands. there are no available hands so these will be simple spheres
--forge.build("Primitives/icosphere",{-1.01*shoulder_spacing,1.25,.05},{0,0,0},{.32,.32,.32})
--forge.build("Primitives/icosphere",{1.01*shoulder_spacing,1.25,.05},{0,0,0},{-.32,.32,.32})

-- generate hands. there are no available hands so these will be simple hexagons
forge.build("Hexagons/hexagon",{-1.01*shoulder_spacing,1.45,-.10},{90,0,0},{.25,.25,.25})
forge.build("Hexagons/hexagon",{1.01*shoulder_spacing,1.45,-.10},{90,0,0},{-.25,.25,.25})
