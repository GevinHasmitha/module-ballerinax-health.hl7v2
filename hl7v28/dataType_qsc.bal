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

# Data type description
#
# + qsc1 - Segment Field Name
# + qsc2 - Relational Operator
# + qsc3 - Value
# + qsc4 - Relational Conjunction
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type QSC record {
    *hl7v2:CompositeType;
    ST qsc1 = "";
    ID qsc2 = "";
    ST qsc3 = "";
    ID qsc4 = "";
};
