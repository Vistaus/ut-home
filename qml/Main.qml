import QtQuick 2.7
import Ubuntu.Components 1.3
import QtQuick.Layouts 1.3

import "./notify"

MainView {
   id: root
   objectName: 'mainView'
   applicationName: 'home.s710'
   automaticOrientation: true

   Notification {
      notificationId: "notification"
   }

   width: units.gu(45)
   height: units.gu(75)

   PageStack {
      id: pageStack
      anchors {
            fill: parent
      }
   }

   Component.onCompleted: pageStack.push(Qt.resolvedUrl("pages/WebPage.qml"))
}
