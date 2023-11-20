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
public const ADT_A16_MESSAGE_TYPE = "ADT_A16";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + arv - ARV Segment
# + rol - ROL Segment
# + nk1 - NK1 Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment
# + db1 - DB1 Segment
# + obx - OBX Segment
# + al1 - AL1 Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + gt1 - GT1 Segment
# + acc - ACC Segment
# + procedure - ADT_A16_PROCEDURE Segment Group
# + insurance - ADT_A16_INSURANCE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "ARV": {name: "ARV", maxReps: -1, required: false, segmentType: ARV},
        "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: ROL},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC}
    }
    ,groups: {
        "ADT_A16_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        },
        "ADT_A16_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: -1, required: false, segmentType: typeof IN3},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        }
    }
}
public type ADT_A16 record {
    *hl7v2:Message;
    string name = ADT_A16_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    PD1 pd1?;
    ARV[] arv = [];
    ROL[] rol = [];
    NK1[] nk1 = [];
    PV1 pv1;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    ADT_A16_PROCEDURE[] procedure = [{pr1:{}}];
    ADT_A16_INSURANCE[] insurance = [{in1:{}}];
};