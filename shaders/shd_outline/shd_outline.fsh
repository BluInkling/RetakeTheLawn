//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetX;
	offsetX.x = pixelW;
	vec2 offsetY;
	offsetY.y = pixelH;
	vec3 outline_Color;
	outline_Color = vec3(1,1,0.9);
	
	float alpha = texture2D(gm_BaseTexture,v_vTexcoord).a;
	float alphaInit = alpha;
	alpha += floor(texture2D(gm_BaseTexture,v_vTexcoord + offsetX).a);
	alpha += floor(texture2D(gm_BaseTexture,v_vTexcoord - offsetX).a);
	alpha += floor(texture2D(gm_BaseTexture,v_vTexcoord + offsetY).a);
	alpha += floor(texture2D(gm_BaseTexture,v_vTexcoord - offsetY).a);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor.a = alpha;
	gl_FragColor.rgb = mix(gl_FragColor.rgb, outline_Color, float(alphaInit==0.0));
}
