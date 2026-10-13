Shader "Recovery/PenguinFloatingNumber"
{
 Properties { _MainTex("Number atlas",2D)="white"{} _CurrencyTex("Currency",2D)="white"{} _CurrencyRect("Currency UV rectangle",Vector)=(0,0,0,0) _FaceColor("Number face",Color)=(1,1,1,1) }
 SubShader {
 Tags {"Queue"="Transparent" "RenderType"="Transparent" "IgnoreProjector"="True"}
 Cull Off ZWrite Off ZTest Off Blend SrcAlpha OneMinusSrcAlpha
 Pass { CGPROGRAM
 #pragma vertex vert
 #pragma fragment frag
 #include "UnityCG.cginc"
 sampler2D _MainTex,_CurrencyTex;float4 _CurrencyRect;fixed4 _FaceColor;
 struct Input {float4 vertex:POSITION;fixed4 color:COLOR;float2 uv:TEXCOORD0;};
 struct Output {float4 vertex:SV_POSITION;fixed4 color:COLOR;float2 uv:TEXCOORD0;};
 Output vert(Input v){Output o;o.vertex=UnityObjectToClipPos(v.vertex);o.color=v.color;o.uv=v.uv;return o;}
 fixed4 frag(Output i):SV_Target {
 fixed4 c=tex2D(_MainTex,i.uv);
 if(_CurrencyRect.z>.001&&i.uv.x>=_CurrencyRect.x&&i.uv.x<=_CurrencyRect.x+_CurrencyRect.z&&i.uv.y>=_CurrencyRect.y&&i.uv.y<=_CurrencyRect.y+_CurrencyRect.w)c=tex2D(_CurrencyTex,(i.uv-_CurrencyRect.xy)/_CurrencyRect.zw);
 else {float light=max(c.r,max(c.g,c.b));c.rgb=lerp(fixed3(.094,.243,.353),_FaceColor.rgb,smoothstep(.45,.85,light));}
 return c*i.color;
 }
 ENDCG }
 }
}
