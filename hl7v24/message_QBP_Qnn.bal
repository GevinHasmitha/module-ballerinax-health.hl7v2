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
public const QBP_Qnn_MESSAGE_TYPE = "QBP_Qnn";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qpd - QPD Segment
# + rdf - RDF Segment
# + rcp - RCP Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "QPD": {name: "QPD", maxReps: 1, required: true, segmentType: QPD},
        "RDF": {name: "RDF", maxReps: 1, required: false, segmentType: RDF},
        "RCP": {name: "RCP", maxReps: 1, required: true, segmentType: RCP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type QBP_Qnn record {
    *hl7v2:Message;
    string name = QBP_Qnn_MESSAGE_TYPE;
    MSH msh;
    QPD qpd;
    RDF rdf?;
    RCP rcp;
    DSC dsc?;
};