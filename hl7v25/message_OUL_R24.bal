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
public const OUL_R24_MESSAGE_TYPE = "OUL_R24";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + dsc - DSC Segment
# + patient - OUL_R24_PATIENT Segment Group
# + visit - OUL_R24_VISIT Segment Group
# + order - OUL_R24_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: NTE},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "OUL_R24_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        },
        "OUL_R24_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "OUL_R24_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "ORC": {name: "ORC", maxReps: 1, required: false, segmentType: typeof ORC},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OUL_R24_TIMING_QTY": {name: "OUL_R24_TIMING_QTY", maxReps: -1, required: false, segmentType: typeof OUL_R24_TIMING_QTY},
                "OUL_R24_SPECIMEN": {name: "OUL_R24_SPECIMEN", maxReps: -1, required: false, segmentType: typeof OUL_R24_SPECIMEN},
                "OUL_R24_RESULT": {name: "OUL_R24_RESULT", maxReps: -1, required: false, segmentType: typeof OUL_R24_RESULT},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        }
    }
}
public type OUL_R24 record {
    *hl7v2:Message;
    string name = OUL_R24_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE nte?;
    DSC dsc?;
    OUL_R24_PATIENT[] patient = [{pid:{}}];
    OUL_R24_VISIT[] visit = [{pv1:{}}];
    OUL_R24_ORDER[] 'order = [{obr:{}}];
};