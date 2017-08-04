uniform mat4 u_Matrix;
uniform float u_Time;
uniform float u_Type;
uniform float u_PointSize;
uniform float u_Alpha;

attribute vec3 a_Position;
attribute vec3 a_Color;
attribute vec3 a_DirectionVector;
attribute float a_ParticleStartTime;

varying vec3 v_Color;
varying float v_ElapsedTime;
varying float v_type;
varying float v_alpha;


//噪点函数
float snoise(vec2 co){
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

void main()
{
	v_Color=a_Color;
	v_type = u_Type;
	v_ElapsedTime= abs(u_Time - a_ParticleStartTime);

	vec3 currentPosition= a_Position + ( a_DirectionVector * v_ElapsedTime);   /** v_ElapsedTime*/
    //vec3 currentPosition= a_Position + a_DirectionVector;
//	float gravityFactor = v_ElapsedTime * v_ElapsedTime / 1000.0;
//	currentPosition.y -= gravityFactor;
	
	gl_Position=vec4(currentPosition,1.0);
 	gl_PointSize = u_PointSize; //set particles size is 10 pixels
 	v_alpha = u_Alpha;
}