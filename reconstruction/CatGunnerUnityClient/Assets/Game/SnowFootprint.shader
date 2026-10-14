Shader "Game/SnowFootprint"
{
    Properties { _Color("Snow impression",Color)=(.38,.60,.73,.45) }
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
            fixed4 _Color;
            struct Input {float4 position:POSITION;fixed4 color:COLOR;};
            struct Output {float4 position:SV_POSITION;fixed4 color:COLOR;};
            Output vert(Input i){Output o;o.position=UnityObjectToClipPos(i.position);o.color=i.color*_Color;return o;}
            fixed4 frag(Output i):SV_Target{return i.color;}
            ENDCG
        }
    }
}
