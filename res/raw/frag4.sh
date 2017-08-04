precision mediump float;
varying  vec4 vColor; //接收从顶点着色器过来的参数

///  wooble efect by // Harley /Mirror
//  ideas are welcome ....

uniform float time;
uniform vec2 resolution;
#define time 0.22*time

float check(vec2 p, float size) {return mod(floor(p.x * size) + floor(p.y * size),2.0);}
void main( void ) {
    vec2 p = ((gl_FragCoord.xy / resolution) - 0.5) * 2.0;
    p.x *= resolution.x/resolution.y;
    p /= dot(p, p);
    float t = sin(time*30. + (10.0*0.1)*distance(p, vec2(1.0)))*0.2;
    p *= mat2(cos(t), tan(t), (t),  cos(t)	);

    gl_FragColor = vec4(check(p, 7.0) * (11.0/length(p))*0.04);
}
