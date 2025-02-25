

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialCorn.rsc";


	float _noisePersistance = 0.1;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = 0.3;
	float _spawnChance = 0.4;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;

	float _spawnChance = 0.0;	
	float _positionTolerance = 0.15;
	
	bool _animated = false;
	Time _preAnimateTime = 1.0;
	Time _postAnimateTime = 1.0;	

	ToolType _toolType = Scythe;

}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = 9.0;

	// growth +- some amount
	float _maxGrowthTolerance = 0.0;

	// length of growth period to maturity
	float _growthInMonths = 3;

	// temperature dependant growth
	bool _temperatureDependent = true;
	float _growthTemp = 70.0;
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
	float _minScale = 0.1;
}
