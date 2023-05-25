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
# + cnn1 - Data type field
# + cnn2 - Data type field
# + cnn3 - Data type field
# + cnn4 - Data type field
# + cnn5 - Data type field
# + cnn6 - Data type field
# + cnn7 - Data type field
# + cnn8 - Data type field
# + cnn9 - Data type field
# + cnn10 - Data type field
# + cnn11 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CNN record {
    *hl7v2:CompositeType;
    ST cnn1 = "";
    ST cnn2 = "";
    ST cnn3 = "";
    ST cnn4 = "";
    ST cnn5 = "";
    ST cnn6 = "";
    IS cnn7 = "";
    IS cnn8 = "";
    IS cnn9 = "";
    ST cnn10 = "";
    ID cnn11 = "";
};
