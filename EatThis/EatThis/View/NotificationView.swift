//
//  NotificationView.swift
//  EatThis
//
//  Created by 김선우 on 3/7/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        
        List {
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
            NotificationCell()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

struct NotificationCell: View {
    var body: some View {
        VStack {
            Text("피곤한 월요일을 기운나게!")
            HStack {
                Text("점심추천")
                Text("20.02.07")
            }
        }
    }
}
