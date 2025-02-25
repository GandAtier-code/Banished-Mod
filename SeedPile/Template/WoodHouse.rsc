//added radius
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui",
		
		"map",
		"zone",
		"toolbar",
		"createplaced",
		"decal",
		"model",
		"highlight",
		"picking",
		"interact",
		"particle",
		"radius",
		"storage",
		"work",
		"statusicon",
		"ambientemitter",
		"Common.rsc:fireWoodHouse",
		
		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",
		"residence",
	]
}

//changed footprintRotation 0->270
CreatePlacedDescription createplaced
{	
	PathBits _placeBits = Normal | Obstacle;
	
	int _width = 4;
	int _height = 5;
	int _footprintRotation = 270;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"0000
		 0000
		 0000
		 0000
		 1111";	

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

//added from GathererShelter
RadiusDescription radius
{
	int _radius = 30;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}