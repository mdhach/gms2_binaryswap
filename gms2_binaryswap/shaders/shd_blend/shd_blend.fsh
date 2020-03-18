//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float v_red;
uniform float v_green;

void main()
{
	
    vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(v_red, v_green, 0.0, col.a);
	// gl_FragColor = col;
}
