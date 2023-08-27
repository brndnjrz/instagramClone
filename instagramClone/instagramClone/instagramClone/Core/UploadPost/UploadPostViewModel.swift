//
//  UploadPostViewModel.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/15/23.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewMode: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage) } }
    }
    @Published var postImage: Image? //what will use to select an image
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return } //gets data from photopicker item
        guard let uiImage = UIImage(data: data) else { return }
        self.postImage = Image(uiImage: uiImage)
    }
}
