//
//  CameraCaptureView  .swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimães on 17/05/25.
//
import SwiftUI
import UIKit
import SwiftData

struct CameraCaptureView: View {
    @Binding var path: [Route]
    @State private var showImagePicker = false
    @State private var image: UIImage?
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        VStack(spacing: 20) {
            Text("Parabéns pela nova memória!")
                .font(.title)

            VStack {
                if let image = image {
                    ZStack {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                            .padding(20)

                    }

                    Button("Salvar Memória") {
                        if let imageData = image.jpegData(compressionQuality: 0.8) {
                            let newMemory = Memoria(photo: imageData)
                            modelContext.insert(newMemory)
                            try? modelContext.save()
                            print("DEBUG: Nova memória salva.")
                            path.removeAll()
                        }
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                }

                Button(action: {
                    self.showImagePicker = true
                }) {
                    Image(systemName: "camera.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .padding(.vertical, 20)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    path.removeAll()
                }) {
                    Image(systemName: "xmark")
                }
            }
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $image)
        }
    }
}


struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?
    @Environment(\.presentationMode) private var presentationMode

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
            }
            parent.presentationMode.wrappedValue.dismiss()
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
