Shader "Game/VerticalIceCliff"
{
    Properties { _MainTex("Vertical ice face",2D)="white"{} }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        Cull Back ZWrite Off ZTest LEqual Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;
            struct Input {float4 position:POSITION;float3 normal:NORMAL;float2 uv:TEXCOORD0;};
            struct Output {float4 position:SV_POSITION;float2 uv:TEXCOORD0;float3 normal:TEXCOORD1;};
            Output vert(Input i){Output o;o.position=UnityObjectToClipPos(i.position);o.uv=i.uv;o.normal=UnityObjectToWorldNormal(i.normal);return o;}
            fixed4 frag(Output i):SV_Target
            {
                fixed4 ice=tex2D(_MainTex,i.uv);
                float face=.88+.12*dot(normalize(i.normal),normalize(float3(-.5,0,-.8)));
                ice.rgb*=face;ice.a=1;return ice;
            }
            ENDCG
        }
    }
}
