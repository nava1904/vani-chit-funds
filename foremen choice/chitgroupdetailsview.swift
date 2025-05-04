//
//  chitgroupdetailsview.swift
//  foremen choice
//
//  Created by navadeep reddy on 03/05/25.
//

import SwiftUI

struct ChitGroupDetailView: View {
    var chitGroup: Chitgroup

    var body: some View {
        Text("Chit Group Detail for \(chitGroup.name ?? "")")
    }
}
