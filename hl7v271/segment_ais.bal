
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
# + ais1 - Segment Record Field
# + ais2 - Segment Record Field
# + ais3 - Segment Record Field
# + ais4 - Segment Record Field
# + ais5 - Segment Record Field
# + ais6 - Segment Record Field
# + ais7 - Segment Record Field
# + ais8 - Segment Record Field
# + ais9 - Segment Record Field
# + ais10 - Segment Record Field
# + ais11 - Segment Record Field
# + ais12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "AIS",
    required: false,
    maxReps: 0,
    fields: {
        "ais1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ais2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ais3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ais4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ais5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ais6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ais7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ais8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ais9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ais10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ais11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "ais12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type AIS record {
    *hl7v2:Segment;
    string name = AIS_SEGMENT_NAME;
    SI ais1 = "";
    ID ais2 = "";
    CWE ais3 = {};
    DTM ais4 = "";
    NM ais5 = "";
    CNE ais6 = {};
    NM ais7 = "";
    CNE ais8 = {};
    CWE ais9 = {};
    CWE ais10 = {};
    CWE[] ais11 = [{}];
    CWE[] ais12 = [{}];
};

public const AIS_SEGMENT_NAME = "AIS";