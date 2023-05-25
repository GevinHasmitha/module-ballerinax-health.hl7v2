
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
# + pid1 - Segment Record Field
# + pid2 - Segment Record Field
# + pid3 - Segment Record Field
# + pid4 - Segment Record Field
# + pid5 - Segment Record Field
# + pid6 - Segment Record Field
# + pid7 - Segment Record Field
# + pid8 - Segment Record Field
# + pid9 - Segment Record Field
# + pid10 - Segment Record Field
# + pid11 - Segment Record Field
# + pid12 - Segment Record Field
# + pid13 - Segment Record Field
# + pid14 - Segment Record Field
# + pid15 - Segment Record Field
# + pid16 - Segment Record Field
# + pid17 - Segment Record Field
# + pid18 - Segment Record Field
# + pid19 - Segment Record Field
# + pid20 - Segment Record Field
# + pid21 - Segment Record Field
# + pid22 - Segment Record Field
# + pid23 - Segment Record Field
# + pid24 - Segment Record Field
# + pid25 - Segment Record Field
# + pid26 - Segment Record Field
# + pid27 - Segment Record Field
# + pid28 - Segment Record Field
# + pid29 - Segment Record Field
# + pid30 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PID",
    required: false,
    maxReps: 0,
    fields: {
        "pid1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pid2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pid3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid5": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pid8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pid9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "pid11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "pid12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pid13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pid16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pid17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pid18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pid19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DLN
        },
        "pid21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "pid23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pid26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "pid27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pid28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pid29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pid30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type PID record {
    *hl7v2:Segment;
    string name = PID_SEGMENT_NAME;
    SI pid1 = "";
    CX pid2 = {};
    CX[] pid3 = [{}];
    CX[] pid4 = [{}];
    XPN[] pid5 = [{}];
    XPN[] pid6 = [{}];
    TS pid7 = {};
    IS pid8 = "";
    XPN[] pid9 = [{}];
    CE[] pid10 = [{}];
    XAD[] pid11 = [{}];
    IS pid12 = "";
    XTN[] pid13 = [{}];
    XTN[] pid14 = [{}];
    CE pid15 = {};
    CE pid16 = {};
    CE pid17 = {};
    CX pid18 = {};
    ST pid19 = "";
    DLN pid20 = {};
    CX[] pid21 = [{}];
    CE[] pid22 = [{}];
    ST pid23 = "";
    ID pid24 = "";
    NM pid25 = "";
    CE[] pid26 = [{}];
    CE pid27 = {};
    CE pid28 = {};
    TS pid29 = {};
    ID pid30 = "";
};

public const PID_SEGMENT_NAME = "PID";