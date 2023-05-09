
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
# + blg1 - Segment Record Field
# + blg2 - Segment Record Field
# + blg3 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "BLG",
    required: false,
    maxReps: 0,
    fields: {
        "blg1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_CCD
        },
        "blg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "blg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CK
        }
    }
}
public type BLG record {
    *hl7v2:Segment;
    string name = BLG_SEGMENT_NAME;
    CM_CCD blg1 = {};
    ID blg2 = "";
    CK blg3 = {};
};

public const BLG_SEGMENT_NAME = "BLG";
