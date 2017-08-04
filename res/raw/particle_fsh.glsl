precision mediump float;

uniform sampler2D u_TextureUnit;
varying vec3 v_Color;
varying float v_ElapsedTime;
varying float v_type;
varying float v_alpha;

void textureColor() {
    gl_FragColor = texture2D(u_TextureUnit, gl_PointCoord);
    if (gl_FragColor.a < v_alpha) {
        discard;
    }
}

void squareColor() {
    //gl_FragColor=vec4(v_Color/v_ElapsedTime,1.0);
    gl_FragColor=vec4(v_Color,1.0);
}

void circleColor() {
    float xDistance = 0.5 - gl_PointCoord.x;
    float yDistance = 0.5 - gl_PointCoord.y;
    float distanceFromCenter = sqrt(xDistance * xDistance + yDistance * yDistance);
    if (distanceFromCenter > 0.5) {
        discard;
    } else {
        gl_FragColor=vec4(v_Color/v_ElapsedTime, 1.0);
    }
}

void main()
{
    if (v_type > 0.5 && v_type < 1.5) {
        textureColor();
    }

    if (v_type > 1.5 && v_type < 2.5) {
        squareColor();
    }

    if (v_type > 2.5 && v_type < 3.5) {
        circleColor();
    }
}
