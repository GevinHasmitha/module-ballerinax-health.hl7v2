
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
# + rxa1 - Segment Record Field
# + rxa2 - Segment Record Field
# + rxa3 - Segment Record Field
# + rxa4 - Segment Record Field
# + rxa5 - Segment Record Field
# + rxa6 - Segment Record Field
# + rxa7 - Segment Record Field
# + rxa8 - Segment Record Field
# + rxa9 - Segment Record Field
# + rxa10 - Segment Record Field
# + rxa11 - Segment Record Field
# + rxa12 - Segment Record Field
# + rxa13 - Segment Record Field
# + rxa14 - Segment Record Field
# + rxa15 - Segment Record Field
# + rxa16 - Segment Record Field
# + rxa17 - Segment Record Field
# + rxa18 - Segment Record Field
# + rxa19 - Segment Record Field
# + rxa20 - Segment Record Field
# + rxa21 - Segment Record Field
# + rxa22 - Segment Record Field
# + rxa23 - Segment Record Field
# + rxa24 - Segment Record Field
# + rxa25 - Segment Record Field
# + rxa26 - Segment Record Field
# + rxa27 - Segment Record Field
# + rxa28 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RXA",
    required: false,
    maxReps: 0,
    fields: {
        "rxa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxa11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxa12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxa13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxa16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "rxa17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxa28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        }
    }
}
public type RXA record {
    *hl7v2:Segment;
    string name = RXA_SEGMENT_NAME;
    NM rxa1 = "";
    NM rxa2 = "";
    DTM rxa3 = "";
    DTM rxa4 = "";
    CWE rxa5 = {};
    NM rxa6 = "";
    CWE rxa7 = {};
    CWE rxa8 = {};
    CWE[] rxa9 = [{}];
    XCN[] rxa10 = [{}];
    LA2 rxa11 = {};
    ST rxa12 = "";
    NM rxa13 = "";
    CWE rxa14 = {};
    ST[] rxa15 = [""];
    DTM[] rxa16 = [""];
    CWE[] rxa17 = [{}];
    CWE[] rxa18 = [{}];
    CWE[] rxa19 = [{}];
    ID rxa20 = "";
    ID rxa21 = "";
    DTM rxa22 = "";
    NM rxa23 = "";
    CWE rxa24 = {};
    CWE rxa25 = {};
    ID rxa26 = "";
    PL rxa27 = {};
    XAD rxa28 = {};
};

public const RXA_SEGMENT_NAME = "RXA";