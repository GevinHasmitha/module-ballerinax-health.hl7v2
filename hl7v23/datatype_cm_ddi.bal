// Copyright (c) 2022, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.

import ballerinax/health.hl7v2;

# Data type description
#
# + cm_ddi1 - Data type field
# + cm_ddi2 - Data type field
# + cm_ddi3 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_DDI record {
    *hl7v2:CompositeType;
    NM cm_ddi1 = -1;
    NM cm_ddi2 = -1;
    NM cm_ddi3 = -1;
};
