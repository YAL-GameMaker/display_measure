{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 113497714299118,
  "extensionVersion": "1.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-12-12T01:34:29",
  "license": "Proprietary",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"display_measure.dll","origname":"extensions\\display_measure.dll","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"display_measure_all_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"display_measure_all_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"display_measure_all_raw_post","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"display_measure_all_raw_post","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"display_measure_is_available_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"display_measure_is_available_raw","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[
        {"name":"display_measure_x64.dll","tags":[],"resourceVersion":"1.0","resourceType":"GMProxyFile","TargetMask":6,},
      ],"copyToTargets":9223372036854775807,"order":[
        {"name":"display_measure_all_raw","path":"extensions/display_measure/display_measure.yy",},
        {"name":"display_measure_all_raw_post","path":"extensions/display_measure/display_measure.yy",},
        {"name":"display_measure_is_available_raw","path":"extensions/display_measure/display_measure.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"display_measure.gml","origname":"extensions\\gml.gml","init":"display_measure_init","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"display_measure_init","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"display_measure_init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"display_measure_prepare_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"display_measure_prepare_buffer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"display_measure_read_chars","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"display_measure_read_chars","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"global.g_display_measure_is_available","hidden":false,"resourceVersion":"1.0","name":"display_measure_is_available","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":9223372036854775807,"order":[
        {"name":"display_measure_init","path":"extensions/display_measure/display_measure.yy",},
        {"name":"display_measure_prepare_buffer","path":"extensions/display_measure/display_measure.yy",},
        {"name":"display_measure_read_chars","path":"extensions/display_measure/display_measure.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"autogen.gml","origname":"extensions\\autogen.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"display_measure_all","kind":2,"help":"display_measure_all()->array<any>","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"display_measure_all","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"display_measure_all","path":"extensions/display_measure/display_measure.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "androidcodeinjection": "",
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 113497714299118,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "display_measure",
  "tags": [],
  "resourceType": "GMExtension",
}