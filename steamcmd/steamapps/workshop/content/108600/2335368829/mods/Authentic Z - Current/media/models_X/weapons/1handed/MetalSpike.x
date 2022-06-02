xof 0303txt 0032
template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9e415a43-7ba6-4a73-8743-b73d47e88476>
 DWORD AnimTicksPerSecond;
}


AnimTicksPerSecond {
 4800;
}

Mesh  {
 36;
 -0.001467;-0.000461;0.004700;,
 -0.005924;-0.000461;-0.004489;,
 -0.005924;-0.000461;0.001637;,
 -0.001467;-0.000461;-0.007553;,
 0.002990;-0.000461;-0.004489;,
 0.002990;-0.000461;0.001637;,
 -0.007267;0.101988;0.003122;,
 -0.000426;0.101403;0.006255;,
 -0.007267;0.101988;-0.003142;,
 -0.000426;0.101403;-0.006274;,
 0.005383;0.100818;-0.003142;,
 0.005383;0.100818;0.003122;,
 -0.007665;0.148870;0.002452;,
 -0.000371;0.147900;0.005863;,
 -0.007665;0.150288;-0.001995;,
 -0.000371;0.150434;-0.006436;,
 0.005780;0.148280;-0.003850;,
 0.005780;0.150144;0.003306;,
 0.000221;0.204819;-0.000389;,
 -0.001467;-0.000461;0.004700;,
 -0.001467;-0.000461;0.004700;,
 -0.005924;-0.000461;-0.004489;,
 -0.005924;-0.000461;0.001637;,
 -0.001467;-0.000461;-0.007553;,
 -0.001467;-0.000461;-0.007553;,
 0.002990;-0.000461;-0.004489;,
 0.002990;-0.000461;0.001637;,
 0.002990;-0.000461;0.001637;,
 -0.007267;0.101988;0.003122;,
 -0.000426;0.101403;-0.006274;,
 0.005383;0.100818;0.003122;,
 0.005383;0.100818;0.003122;,
 -0.007665;0.148870;0.002452;,
 -0.000371;0.150434;-0.006436;,
 0.005780;0.150144;0.003306;,
 0.000221;0.204819;-0.000389;;
 34;
 3;20,22,21;,
 3;20,21,24;,
 3;20,24,25;,
 3;20,25,27;,
 3;28,0,7;,
 3;19,6,2;,
 3;8,2,6;,
 3;2,8,1;,
 3;29,1,8;,
 3;1,29,23;,
 3;10,3,9;,
 3;3,10,4;,
 3;31,4,10;,
 3;4,31,26;,
 3;7,5,11;,
 3;5,7,0;,
 3;32,7,13;,
 3;7,32,28;,
 3;14,6,12;,
 3;6,14,8;,
 3;33,8,14;,
 3;8,33,29;,
 3;16,9,15;,
 3;9,16,10;,
 3;34,10,16;,
 3;10,34,30;,
 3;13,11,17;,
 3;11,13,7;,
 3;18,32,13;,
 3;35,14,12;,
 3;35,33,14;,
 3;18,16,15;,
 3;18,34,16;,
 3;18,13,17;;

 MeshNormals {
  36;
  0.022901;-0.596718;0.802124;,
  -0.694486;-0.621287;-0.362893;,
  -0.683175;-0.620778;0.384586;,
  -0.000800;-0.592598;-0.805498;,
  0.688103;-0.611702;-0.390301;,
  0.709256;-0.617662;0.339779;,
  -0.840294;-0.006100;0.542096;,
  0.034100;-0.004600;0.999408;,
  -0.842609;-0.004700;-0.538506;,
  0.030101;-0.001700;-0.999545;,
  0.861618;-0.012200;-0.507411;,
  0.857114;-0.015000;0.514908;,
  -0.840183;0.064199;0.538489;,
  -0.022901;0.047101;0.998628;,
  -0.880227;0.079102;-0.467914;,
  -0.063299;0.063399;-0.995979;,
  0.833437;0.041902;-0.551024;,
  0.828785;0.066599;0.555590;,
  0.013900;0.999900;-0.002600;,
  0.022901;-0.596718;0.802124;,
  0.022901;-0.596718;0.802124;,
  -0.694486;-0.621287;-0.362893;,
  -0.683175;-0.620778;0.384586;,
  -0.000800;-0.592598;-0.805498;,
  -0.000800;-0.592598;-0.805498;,
  0.688103;-0.611702;-0.390301;,
  0.709256;-0.617662;0.339779;,
  0.709256;-0.617662;0.339779;,
  -0.840294;-0.006100;0.542096;,
  0.030101;-0.001700;-0.999545;,
  0.857114;-0.015000;0.514908;,
  0.857114;-0.015000;0.514908;,
  -0.840183;0.064199;0.538489;,
  -0.063299;0.063399;-0.995979;,
  0.828785;0.066599;0.555590;,
  0.013900;0.999900;-0.002600;;
  34;
  3;20,22,21;,
  3;20,21,24;,
  3;20,24,25;,
  3;20,25,27;,
  3;28,0,7;,
  3;19,6,2;,
  3;8,2,6;,
  3;2,8,1;,
  3;29,1,8;,
  3;1,29,23;,
  3;10,3,9;,
  3;3,10,4;,
  3;31,4,10;,
  3;4,31,26;,
  3;7,5,11;,
  3;5,7,0;,
  3;32,7,13;,
  3;7,32,28;,
  3;14,6,12;,
  3;6,14,8;,
  3;33,8,14;,
  3;8,33,29;,
  3;16,9,15;,
  3;9,16,10;,
  3;34,10,16;,
  3;10,34,30;,
  3;13,11,17;,
  3;11,13,7;,
  3;18,32,13;,
  3;35,14,12;,
  3;35,33,14;,
  3;18,16,15;,
  3;18,34,16;,
  3;18,13,17;;
 }

 MeshTextureCoords {
  36;
  0.343642;-0.351530;,
  0.527037;-0.344394;,
  0.439075;-0.344394;,
  0.606220;-0.351530;,
  0.689681;-0.351530;,
  0.235752;-0.351530;,
  0.417385;-0.582186;,
  0.318206;-0.588779;,
  0.494508;-0.586592;,
  0.613020;-0.590784;,
  0.720193;-0.584682;,
  0.232355;-0.587948;,
  0.434071;-0.748901;,
  0.345570;-0.763211;,
  0.489212;-0.748951;,
  0.622610;-0.755353;,
  0.684925;-0.771793;,
  0.277454;-0.803964;,
  0.492392;-0.810728;,
  0.342986;-0.344394;,
  0.169650;-0.057253;,
  0.184006;-0.341289;,
  0.228690;-0.182394;,
  0.605564;-0.344394;,
  0.079542;-0.374792;,
  0.020341;-0.248435;,
  0.795752;-0.351530;,
  0.065763;-0.089796;,
  0.418041;-0.589322;,
  0.612364;-0.583648;,
  0.816494;-0.563794;,
  0.796893;-0.594379;,
  0.434727;-0.756037;,
  0.621954;-0.748217;,
  0.734856;-0.810120;,
  0.491736;-0.803592;;
 }

 VertexDuplicationIndices {
  36;
  19;
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  0,
  0,
  1,
  2,
  3,
  3,
  4,
  5,
  5,
  6,
  9,
  11,
  11,
  12,
  15,
  17,
  18;
 }

 MeshMaterialList {
  1;
  34;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;

  Material _15___Default {
   1.000000;1.000000;1.000000;1.000000;;
   10.000002;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "C://Users//travi//Downloads//MetalSpear.png";
   }
  }
 }

 XSkinMeshHeader {
  0;
  0;
  0;
 }
}