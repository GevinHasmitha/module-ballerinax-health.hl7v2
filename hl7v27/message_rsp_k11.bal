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

public const RSP_K11_MESSAGE_TYPE = "RSP_K11";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + msa - Message Record Field
# + err - Message Record Field
# + qak - Message Record Field
# + qpd - Message Record Field
# + dsc - Message Record Field
# + segment_pattern - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "QPD": {name: "QPD", maxReps: 1, required: false, segmentType: QPD},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type RSP_K11 record {
    *hl7v2:Message;
    string name = RSP_K11_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    MSA msa?;
    ERR err?;
    QAK qak?;
    QPD qpd?;
    DSC dsc?;
    SEGMENT_PATTERN[] segment_pattern = [{}];
};