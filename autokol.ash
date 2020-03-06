void main()
{
    if (my_daycount() == 1 && my_turncount() == 0)
    {
        print("Start ascension setup");
        ascension_setup()
    }

    int cubelingCounter = 0;
}

void ascension_setup()
{

    string currentClass = my_class();

    // Toot Oriole Stuff
    print("Toot Oriole Stuff");
    visit_url("tutorial.php?action=toot");
    use(item_amount($item[Letter From King Ralph XI]), $item[Letter From King Ralph XI]);
    use(item_amount($item[Pork Elf Goodies Sack]), $item[Pork Elf Goodies Sack]);
    use(item_amount($item[Ten-leaf Clover]), $item[Ten-leaf Clover]);
    // Sell Pork Elf Goodies
    autosell(item_amount($item[hamethyst]), $item[hamethyst]);
    autosell(item_amount($item[baconstone]), $item[baconstone]);
    autosell(item_amount($item[porquoise]), $item[porquoise]);
    
    // Set Familiar to Gelatinous Cubeling
    print("Setting familiar to Gelatinous Cubeling");
    use_familiar($familiar[Gelatinous Cubeling]);

    // Set Equipment
    print("Setting Equipment");
    equip($item[Vampyric Cloake]);
    equip($slot[weapon], $item[Fourth of May Cosplay Saber]);
    equip($item[Kramco Sausage-O-Matic$trade;]);
    equip($slot[acc1], $item[Lil' Doctor&trade; bag]);
    equip($slot[acc2], $item[Powerful Glove]);

    // Handle Astral Equipment
    // TODO: Add the rest of the astral equipment
    if(possessEquipment($item[Astral Belt]))
    {
        equip($slot[acc3], $item[Astral Belt]));
    }
    if(possessEquipment($item[Astral Pet Sweater])
    {
        equip($item[Astral Pet Sweater]);
    }
    
    // Class Specific Equipment
    print("Handling class specific equipment");
    switch(currentClass)
    {
        case $class[Seal Clubber]:
            equip($item[Seal Skull Helmet]);
            break;
        case $class[Turtle Tamer]:
            equip($item[Helmet Turtle]);
            break;
        case $class[Pastamancer]:
            equip($item[Ravioli Hat]);
            break;
        case $class[Sauceror]:
            equip($item[Hollandaise Helmet]);
            break;
        case $class[Disco Bandit]:
            equip($item[Disco Mask]);
            break;
        case $class[Plumber]:
            equip($slot[acc3], $item[Work Boots]);
        default:
            break;
    }

    switch(currentClass)
    {
        case $class[AccordionThief]:
            equip($item[Mariachi Pants]);
            break;
        default:
            equip($item[Old Sweatpants]);
            break;
    }

}

boolean possessEquipment(item equipment)
{
    return equipmentAmount(equipment) > 0;
}