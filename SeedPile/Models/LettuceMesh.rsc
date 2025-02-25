GraphicsMesh resource
{
	String _meshName = "Models\Lettuce.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "lettuce";
			ImageBuffer _image = "Models\MaterialInstance\LettuceAO.rsc";
		}
	]
}