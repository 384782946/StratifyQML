/*
Copyright 2016 Tyler Gilbert

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import QtQuick 2.6
import StratifyLabs.UI 2.0

Rectangle {
    property alias style: properties.style;
    property alias span: properties.span;
    property alias properties: properties;
    property string name;

    default property alias data: contents.data;

    width: parent ? (properties.fillWidth ? parent.width : undefined) : undefined;
    height: parent ? (properties.fillHeight ? parent.height : undefined) : undefined;

    implicitWidth: contents.childrenRect.width + properties.paddingHorizontal*2;
    implicitHeight: contents.childrenRect.height + properties.paddingVertical*2;
    color: properties.backgroundColor;

    Item {
        id: contents;
        x: properties.paddingHorizontal;
        y: properties.paddingVertical;
        height: parent.height - properties.paddingVertical*2;
        width: parent.width - properties.paddingHorizontal*2;
    }

    SProperties {
        id: properties;
        type: "container";
        blockWidth: true;
    }

}