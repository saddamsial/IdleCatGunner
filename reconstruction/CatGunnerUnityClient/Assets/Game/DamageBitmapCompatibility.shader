// HLSL/Metal port of matching Hidden/DamageText compiled GLES3 expressions.
// Original program and pass-state evidence: forest-damage-original-gles3.glsl
// and forest-damage-original-shader-state.json. Not original authoring source.
Shader "Game/DamageBitmapCompatibility"
{
    Properties { _MainTex ("Original bitmap font atlas",2D)="white"{} }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent" "IgnoreProjector"="True"}
        Cull Off ZWrite Off ZTest Off Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;
            struct Input {float4 vertex:POSITION;float4 color:COLOR;float2 uv:TEXCOORD0;};
            struct Output {float4 vertex:SV_POSITION;float4 color:COLOR;float2 uv:TEXCOORD0;};
            Output vert(Input v){Output o;o.vertex=UnityObjectToClipPos(v.vertex);o.color=v.color;o.uv=v.uv;return o;}
            fixed4 frag(Output i):SV_Target{return tex2D(_MainTex,i.uv)*i.color;}
            ENDCG
        }
    }
}
