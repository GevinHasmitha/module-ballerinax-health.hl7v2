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

public const EHC_E02_MESSAGE_TYPE = "EHC_E02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + invoice_information - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: -1, required: false, segmentType: UAC}
    }
    ,groups: {
        "INVOICE_INFORMATION": {
            maxReps: 1,
            required: false,
            segments: {
            }
        }
    }
}
public type EHC_E02 record {
    *hl7v2:Message;
    string name = EHC_E02_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC[] uac = [];
    INVOICE_INFORMATION[] invoice_information = [{}];
};