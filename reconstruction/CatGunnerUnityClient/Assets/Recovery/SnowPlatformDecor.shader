Shader "Recovery/SnowPlatformDecor"
{
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        Cull Off ZWrite Off ZTest LEqual Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            struct Input {float4 position:POSITION;float3 normal:NORMAL;fixed4 color:COLOR;};
            struct Output {float4 position:SV_POSITION;fixed4 color:COLOR;float3 normal:TEXCOORD0;};
            Output vert(Input i){Output o;o.position=UnityObjectToClipPos(i.position);o.color=i.color;o.normal=UnityObjectToWorldNormal(i.normal);return o;}
            fixed4 frag(Output i):SV_Target
            {fixed4 snow=i.color;snow.rgb*=.94+.06*dot(normalize(i.normal),normalize(float3(-.35,1,-.55)));return snow;}
            ENDCG
        }
    }
}
