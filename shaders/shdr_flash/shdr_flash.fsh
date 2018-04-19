//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
vec4 flash;

void main()
{
    vec4 c = texture2D(gm_BaseTexture, v_vTexcoord);		//store vec4 pixel value of sprite texture
	if (c.a == 1.0) {
		gl_FragColor = vec4(1.0,1.0,1.0,c.a);				//draw white but retain texture alpha value
	} else {
		gl_FragColor = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
	}
}
