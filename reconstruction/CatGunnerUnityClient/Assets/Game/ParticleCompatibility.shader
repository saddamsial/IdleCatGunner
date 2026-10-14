Shader "Game/ParticleCompatibility"
{
    Properties
    {
        _MainTex ("Original Particle Texture",2D)="white"{}
        _Color ("Original Base Color",Color)=(1,1,1,1)
        _SrcBlend ("Source Blend",Float)=5
        _DstBlend ("Destination Blend",Float)=10
    }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        ZWrite Off Cull Off Blend [_SrcBlend] [_DstBlend]
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;float4 _MainTex_ST;fixed4 _Color;
            struct Input {float4 vertex:POSITION;float4 color:COLOR;float2 uv:TEXCOORD0;};
            struct Output {float4 vertex:SV_POSITION;float4 color:COLOR;float2 uv:TEXCOORD0;};
            Output vert(Input v) {Output o;o.vertex=UnityObjectToClipPos(v.vertex);o.color=v.color*_Color;o.uv=TRANSFORM_TEX(v.uv,_MainTex);return o;}
            fixed4 frag(Output i):SV_Target {return tex2D(_MainTex,i.uv)*i.color;}
            ENDCG
        }
    }
}
