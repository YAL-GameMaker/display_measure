{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "display_measure",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "display_measure.dll",
            "final": "",
            "functions": [
                {
                    "id": "0f1f0244-6e60-b50d-715b-e95d6935ff22",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "display_measure_all_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_all_raw",
                    "returnType": 2
                },
                {
                    "id": "f59efd71-1e03-bcf1-4d10-d743f5d6f52c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "display_measure_all_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_all_raw_post",
                    "returnType": 2
                },
                {
                    "id": "3d96e938-b943-f78a-0ae8-8654d954521e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "display_measure_is_available_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_is_available_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\display_measure.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "5a4a5711-0806-d358-715b-da6e518e11c7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "display_measure_is_available",
                    "hidden": false,
                    "value": "global.g_display_measure_is_available"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "display_measure.gml",
            "final": "",
            "functions": [
                {
                    "id": "9c0764db-e79a-165d-8aef-7b84be581b4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "display_measure_init",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_init",
                    "returnType": 2
                },
                {
                    "id": "c3d3ce88-d5db-0ec1-9fb5-70c4f49f77ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "display_measure_prepare_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_prepare_buffer",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-919f-4aa7-715b-bc0835accc18",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "display_measure_read_chars",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "display_measure_read_chars",
                    "returnType": 2
                }
            ],
            "init": "display_measure_init",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "962d9a80-fb98-4072-93ea-c79e5ae6f0f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "autogen.gml",
            "final": "",
            "functions": [
                {
                    "id": "a8b1fb42-97cc-0d91-3e2f-e39402e0a9b2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "display_measure_all",
                    "help": "display_measure_all()->array<any>",
                    "hidden": false,
                    "kind": 2,
                    "name": "display_measure_all",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\autogen.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}