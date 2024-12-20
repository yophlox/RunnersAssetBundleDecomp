// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ykSky_dv" {
Properties {
 _MainTex ("Base (RGB)", 2D) = "white" {}
}
SubShader {
 Tags { "QUEUE"="Background" "IGNOREPROJECTOR"="true" "RenderType"="Opaque" }
 Pass {
  Tags { "QUEUE"="Background" "IGNOREPROJECTOR"="true" "RenderType"="Opaque" }
  Cull Off

  CGPROGRAM
    #pragma vertex vert
    #pragma fragment frag

    #include "UnityCG.cginc"

    sampler2D _MainTex;
    float4 _MainTex_ST;

    struct appdata_t
    {
      float4 vertex : POSITION;
      fixed4 color : COLOR;
      half2 texcoord : TEXCOORD0;
    };

    struct v2f
    {
      float4 vertex : POSITION;
      float4 color : COLOR;
      float2 texcoord : TEXCOORD0;
    };

    v2f vert(appdata_t v)
    {
      v2f o;

      o.vertex = UnityObjectToClipPos(v.vertex);
      o.color = v.color;

      o.texcoord = (v.texcoord.xy * _MainTex_ST.xy) + _MainTex_ST.zw;

      return o;
    }

    float4 frag(v2f f) : COLOR
    {
      float4 texCol = tex2D(_MainTex, f.texcoord);
      float4 tmpvar = float4(f.color.xyz * texCol.xyz, 1.0);
      return tmpvar;
    }
  ENDCG
 }
}
}
