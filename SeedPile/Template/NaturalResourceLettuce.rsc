
// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// components that will be used
	Description _descriptions
	[
		"value",

		"map",
		"model",
		"naturalresource",
		"growth",
		"select"
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	String _spriteName = "SeedLettuceSmall";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _stringName = "SeedLettuce";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 2500;

	// how much is sold in a single sale
	int _stackCount = 1;
}

MapDescription map
{
	PathType _pathType = Obstacle;
	bool _addOnCreate = true;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	String _spriteName = "CropLettuce";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _stringName = "Lettuce";
	SelectGroup _group = Crop;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\LettuceLeafMesh.rsc" ] }
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialLettuce.rsc";

	float _noisePersistance = 0.1;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = 0.3;
	float _spawnChance = 0.4;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;	
	
	bool _animated = false;
	Time _preAnimateTime = 1.5;
	Time _postAnimateTime = 1.5;	
	float _positionTolerance = 0.3;

	ToolType _toolType = Scythe;
	// Profession _requiredHarvestProfession = "Game/Profession/Profession.rsc:gatherer";
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = 9.0; //doesn't seen to affect growth of crop

	// growth +- some amount
	float _maxGrowthTolerance = 1.0;

	// length of growth period to maturity
	float _growthInMonths = 2;

	// temperature dependant growth
	bool _temperatureDependent = true;
	float _growthTemp = 65.0;
	float _growthTempRange = 25.0;

	// soil properties
	bool _soilDependent = true;
	float _soilQualityChangeOnRemove = 0.98f;
	float _soilQualityChangeOnDecay = -0.8f;

	// re-seeding. 
	bool _autoSeed = false;
	int _seedChance = 60;
	int _seedDistance = 1;
	int _seedTimeMonths = 1;
	float _growthForSeeding = 0.0;

	// max neighbors when reseeding
	int _maxNeighbors = 2;
	int _maxNeighborsSelf = 8;

	bool _zScale = true;
	float _minScale = 0.2f;
}
