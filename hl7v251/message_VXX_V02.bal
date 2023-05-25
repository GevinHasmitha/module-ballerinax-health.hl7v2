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

public const VXX_V02_MESSAGE_TYPE = "VXX_V02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + msa - Message Record Field
# + sft - Message Record Field
# + qrd - Message Record Field
# + qrf - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "QRD": {name: "QRD", maxReps: 1, required: false, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF}
    }
}
public type VXX_V02 record {
    *hl7v2:Message;
    string name = VXX_V02_MESSAGE_TYPE;
    MSH msh?;
    MSA msa?;
    SFT[] sft = [];
    QRD qrd?;
    QRF qrf?;
};