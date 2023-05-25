
// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerinax/health.hl7v2;

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + nk11 - Segment Record Field
# + nk12 - Segment Record Field
# + nk13 - Segment Record Field
# + nk14 - Segment Record Field
# + nk15 - Segment Record Field
# + nk16 - Segment Record Field
# + nk17 - Segment Record Field
# + nk18 - Segment Record Field
# + nk19 - Segment Record Field
# + nk110 - Segment Record Field
# + nk111 - Segment Record Field
# + nk112 - Segment Record Field
# + nk113 - Segment Record Field
# + nk114 - Segment Record Field
# + nk115 - Segment Record Field
# + nk116 - Segment Record Field
# + nk117 - Segment Record Field
# + nk118 - Segment Record Field
# + nk119 - Segment Record Field
# + nk120 - Segment Record Field
# + nk121 - Segment Record Field
# + nk122 - Segment Record Field
# + nk123 - Segment Record Field
# + nk124 - Segment Record Field
# + nk125 - Segment Record Field
# + nk126 - Segment Record Field
# + nk127 - Segment Record Field
# + nk128 - Segment Record Field
# + nk129 - Segment Record Field
# + nk130 - Segment Record Field
# + nk131 - Segment Record Field
# + nk132 - Segment Record Field
# + nk133 - Segment Record Field
# + nk134 - Segment Record Field
# + nk135 - Segment Record Field
# + nk136 - Segment Record Field
# + nk137 - Segment Record Field
# + nk138 - Segment Record Field
# + nk139 - Segment Record Field
# + nk140 - Segment Record Field
# + nk141 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "NK1",
    required: false,
    maxReps: 0,
    fields: {
        "nk11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "nk12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "nk112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "nk113": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "nk114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nk117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nk124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk128": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk131": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk132": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk133": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "nk134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "nk141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        }
    }
}
public type NK1 record {
    *hl7v2:Segment;
    string name = NK1_SEGMENT_NAME;
    SI nk11 = "";
    XPN[] nk12 = [{}];
    CWE nk13 = {};
    XAD[] nk14 = [{}];
    XTN[] nk15 = [{}];
    XTN[] nk16 = [{}];
    CWE nk17 = {};
    DT nk18 = "";
    DT nk19 = "";
    ST nk110 = "";
    JCC nk111 = {};
    CX nk112 = {};
    XON[] nk113 = [{}];
    CWE nk114 = {};
    CWE nk115 = {};
    DTM nk116 = "";
    CWE[] nk117 = [{}];
    CWE[] nk118 = [{}];
    CWE[] nk119 = [{}];
    CWE nk120 = {};
    CWE nk121 = {};
    CWE nk122 = {};
    ID nk123 = "";
    CWE nk124 = {};
    CWE nk125 = {};
    XPN[] nk126 = [{}];
    CWE nk127 = {};
    CWE[] nk128 = [{}];
    CWE[] nk129 = [{}];
    XPN[] nk130 = [{}];
    XTN[] nk131 = [{}];
    XAD[] nk132 = [{}];
    CX[] nk133 = [{}];
    CWE nk134 = {};
    CWE[] nk135 = [{}];
    CWE nk136 = {};
    ST nk137 = "";
    ST nk138 = "";
    CWE nk139 = {};
    XTN nk140 = {};
    XTN nk141 = {};
};

public const NK1_SEGMENT_NAME = "NK1";