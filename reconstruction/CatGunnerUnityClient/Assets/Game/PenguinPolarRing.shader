Shader "Game/PenguinPolarRing"
{
    Properties
    {
        _MainTex("Ring catalogue reference",2D)="white"{}
        _Color("Tint",Color)=(1,1,1,1)
        _SoftGlow("Soft projectile glow",Float)=0
    }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        ZWrite Off Cull Off Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            fixed4 _Color;float _SoftGlow;
            struct Input {float4 vertex:POSITION;fixed4 color:COLOR;float2 uv:TEXCOORD0;};
            struct Output {float4 vertex:SV_POSITION;fixed4 color:COLOR;float2 uv:TEXCOORD0;};
            Output vert(Input v)
            {
                Output o;o.vertex=UnityObjectToClipPos(v.vertex);o.color=v.color*_Color;o.uv=v.uv;return o;
            }
            fixed4 frag(Output i):SV_Target
            {
                float2 ringUV=i.uv*2-1;float radius=length(ringUV);
                if(_SoftGlow>.5)
                {
                    float haze=pow(saturate(1-radius),2.5)*.35;
                    return fixed4(.30,.84,1,haze*i.color.a);
                }
                float angle=atan2(ringUV.y,ringUV.x);
                float arc=frac(angle/6.2831853*3+.5);
                float taper=smoothstep(.02,.18,arc)*(1-smoothstep(.70,.98,arc));
                float distance=abs(radius-.75);
                float core=1-smoothstep(.012,.030+taper*.026,distance);
                float rim=(1-smoothstep(.055,.095,distance))*.52;
                float halo=(1-smoothstep(.095,.19,distance))*.16;
                float alpha=saturate(core*(.20+taper*.8)+rim+halo)*i.color.a;
                fixed3 cyan=fixed3(.15,.73,1);
                fixed3 violet=fixed3(.46,.37,.96);
                fixed3 edge=lerp(cyan,violet,(1-taper)*.30);
                fixed3 rgb=lerp(edge,fixed3(.90,1,1),core*taper);
                return fixed4(rgb*i.color.rgb,alpha);
            }
            ENDCG
        }
    }
}
