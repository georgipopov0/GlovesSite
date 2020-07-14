use Gloves;
drop table Gloves;
create table Gloves(
	gloveName varchar(64),
    gloveDescription varchar(1024),
    glovePrice double,
    gloveType varchar(20),
    gloveMaterialNeeded double
);

insert into Gloves
values ("Fabric Gloves",
 "This is the most common type of gloves for general work or projects where a high level of protection isn’t needed. These gloves offer a thin, lightweight fabric covering that offers little safety to the user. They’re mostly used to prevent minor scrapes or splinters, though do nothing to prevent punctures, burns, or cuts."
 , 2.00, "Reusable", 1);
 
 insert into Gloves
 values ("Coated Fabric Gloves", "A step above non-coated fabric gloves, these gloves provide a little more protection against punctures, cuts, and chemicals. Nitrile, PVC, and polyurethane are common types of coatings, but the actual coating you need depends on the job itself."
 , 3.00, "Reusable", 1);
 
 insert into Gloves
 values ("Leather Gloves","A step above non-coated fabric gloves, these gloves provide a little more protection against punctures, cuts, and chemicals. Nitrile, PVC, and polyurethane are common types of coatings, but the actual coating you need depends on the job itself.

Leather Gloves
Leather gloves are desirable for a number of reasons. They provide good grip, insulation, and durability. They’re thicker than regular fabric, which offers a higher level of protection.

However, leather gloves tend to dry, crack, or shrivel when excessively exposed to high temperatures. They’re not ideal for working with heat because of this reason, though they do offer adequate burn protection when in good condition.

Welders commonly use leather gloves, usually with a durable liner to offer extra protection."
, 15, "Reusable", 1);

insert into Gloves
values ("Latex Gloves", "Latex is natural rubber. It has very high elasticity, high durability and very good dry and wet grip. The resistance against alcohol and water soluble chemicals is high. Latex contains a natural protein which can cause allergic reactions for sensitive persons during both production and use."
, 0.05, "Disposable", 1);

insert into Gloves
values ("PVC Gloves", "PVC is a plastic. Gloves in PVC has good durability and a good grip in both dry and wet environments. It protects well against several water soluble chemicals but has a limited protection against organic solvents."
,0.10, "disposable", 1);

insert into Gloves
values("Kevlar Gloves", "The durability of kevlar gloves make them an ideal choice for industrial situations. The material offers a lightweight yet robust solution to hand protection, allowing for movability yet remaining strong under duress. Kevlar is resistant to cuts and punctures and is often used as a lining in other types of gloves."
,10.00, "Reusable", 1);

insert into Gloves
values("Nitrile Gloves", "Nitrile is a synthetic rubber. It is very durable and gives good grip in both dry, wet and oily environments. During the production process of foamed nitrile the solvent used evaporates and small holes are formed in the coating. These small holes allows water and vapor to pass through and makes the glove very flexible and comfortable. Nitrile withstands both oil and solvents.",
0.2,"Disposable", 1);

insert into Gloves
values ("Butyl Rubber Gloves", "Butyl rubber gloves are the best solution when working with chemicals. Because they’re rubber, they don’t absorb liquids they come into contact with. The rubber resists harmful chemicals like alcohols, ketones, nitro-compounds, acids, bases, and even rocket fuel. They can withstand hot and cold temperatures, abrasion, oxidation, and ozone corrosion, as well."
, 20, "Reusable", 1);

insert into Gloves
values ("Vibration-Resistant Gloves", "The impact of prolonged vibration is becoming a top concern to EHS leaders. Luckily, there are vibration-resistant gloves that can help to reduce the impact of extended vibration. These gloves help to absorb much of the impact of vibrating tools or equipment so that less energy is transferred to your hands. They are most commonly used in the fabrication, automotive, and construction industries where workers use vibrating tools for extended periods of time."
, 30, "Reusable", 1);

-- insert into Gloves
-- values ("Puncture-Resistant Gloves","These gloves are specifically designed to resist cuts or punctures to the hand. The woven design helps to deflect sharp objects that could puncture the skin. Industries that perform manual cutting, such as construction, food service, and warehousing, can benefit from puncture-resistant gloves."
-- ,30,"reusable");

insert into Gloves
values ("Aluminized Gloves", "These are one of the best types of gloves to wear when working with heat. They’re extremely resistant to high temperatures, which is why they’re common in welding, foundries, and laboratories. They can protect your hands without fail at temperatures of up to 2,000ºF."
, 50, "Reusable", 1);

insert into Gloves
values ("Polyurethane Gloves", "Polyurethane can be used both as coating on a knitted glove liner and as coating on thin textile materials. It is often used as a leather imitation, then it’s called synthetic leather. PU is a thin and pliable coating which gives good dexterity, good dry- and wet grip and is still flexible at low temperatures."
, 20, "Reusable", 1);

insert into Gloves
values ("Neoprene Gloves", "Neoprene is the brand name for Chloroprene. Chloroprene is a synthetic rubber material with good heat isolation properties. It has also good protection against oil, fat, organic hydrocarbons and acids when it comes to chemical protection."
,0.15, "Disposable", 1);	




